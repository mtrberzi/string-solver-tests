#!/usr/bin/python3

import configparser
import time
import tempfile
import os

from os import listdir, system, kill
from os.path import isfile, join
from signal import alarm, signal, SIGALRM, SIGKILL
from subprocess import PIPE, Popen

def findTests(path):
    files = [ f for f in listdir(path) if (isfile(join(path,f)) and f.endswith('smt2')) ]
    return files

class TestResult:
    def __init__(self, runtime, result, verify, error):
        self.runtime = runtime
        self.result = result
        self.verify = verify
        self.error = error

    def __str__(self):
        return self.runtime + "\t" + self.result + "\t" + self.verify + "\t" + self.error

class TestCase:
    def __init__(self, filename):
        self.filename = filename
        self.solverResult = {}

def get_process_children(pid):
    p = Popen('ps --no-headers -o pid --ppid %d' % pid, shell = True,stdout = PIPE, stderr = PIPE)
    stdout, stderr = p.communicate()
    return [int(p) for p in stdout.split()]
        
# Run a command with a timeout, after which it will be forcibly killed.
def run(args, cwd = None, shell = False, kill_tree = True, timeout = -1, env = None):
    '''
    Run a command with a timeout after which it will be forcibly
    killed.
    '''
    class Alarm(Exception):
        pass
    def alarm_handler(signum, frame):
        raise Alarm
    p = Popen(args, shell = shell, cwd = cwd, stdout = PIPE, stderr = PIPE, env = env)
    if timeout != -1:
        signal(SIGALRM, alarm_handler)
        alarm(timeout)
    try:
        stdout, stderr = p.communicate()
        stdout = stdout.decode(encoding='ascii')
        stderr = stderr.decode(encoding='ascii')
        if timeout != -1:
            alarm(0)
    except Alarm:
        pids = [p.pid]
        if kill_tree:
            pids.extend(get_process_children(p.pid))
        for pid in pids:
            # process might have died before getting to this line
            # so wrap to avoid OSError: no such process
            try:
                kill(pid, SIGKILL)
            except OSError:
                pass
        return -9, '', ''
    return p.returncode, stdout, stderr
        
## Default parameters

timeout = 20 # seconds
testDirs = []
tapFile = "z3.tap"

run_z3 = False
run_z3str2 = False
run_cvc4 = False
run_s3 = False

def read_parameters(params):
    global timeout
    global testDirs
    global tapFile
    global run_z3
    global run_z3str2
    global run_cvc4
    global run_s3
    if 'Timeout' in params:
        timeout = int(params['Timeout'])
    if 'TestDirectories' in params:
        testDirs = params['TestDirectories'].split(';')
    if 'TAPFile' in params:
        tapFile = params['TAPFile']
    if 'RunZ3' in params:
        run_z3 = (params['RunZ3'] == 'yes')
    if 'RunZ3str2' in params:
        run_z3str2 = (params['RunZ3str2'] == 'yes')
    if 'RunCVC4' in params:
        run_cvc4 = (params['RunCVC4'] == 'yes')
    if 'RunS3' in params:
        run_s3 = (params['RunS3'] == 'yes')

## Z3 test runner

z3_solver = ''

def read_z3_parameters(params):
    global z3_solver
    if 'Solver' in params:
        z3_solver = params['Solver']
    else:
        raise Exception("[z3] section must specify path to solver")

def test_with_z3(testfile):
    runtime = ''
    result = ''
    verify = ''
    error = ''

    try:
        startTime = time.time()
        (exitCode, output, errors) = run(z3_solver + ' model_validate=true ' + testfile, shell=True, timeout=timeout)
        endTime = time.time()
        runtime = str(round( float(endTime - startTime), 3))
        if len(output) == 0:
            result = 'timeout'
        else:
            lines = output.split("\n")
            errlines = errors.split("\n")

            combined_lines = ""
            for line in lines:
                combined_lines += " " + line
            for line in errlines:
                combined_lines += " " + line    
            
            lines = [line for line in lines if line.strip()]
            # check result status
            for line in lines:
                if 'unsat' in line:
                    result = 'unsat'
                    error = ''
                    break
                elif 'sat' in line:
                    result = 'sat'
                    error = ''
                    break
                elif 'unknown' in line:
                    result = 'unknown'
                    error = ''
                    break
                else:
                    result = 'error'
                    error = combined_lines
            # if the result is 'sat', check lines again for "invalid model"
            if result == 'sat':
                verify = 'v-ok'
                for line in lines:
                    if 'invalid model' in line:
                        verify = 'v-fail'
                        break
    except Exception as e:
        result = 'crash'
        error = str(e)
        
    return TestResult(runtime, result, verify, error)

    
## Z3str2 test runner

z3str2_solver = ''

def read_z3str2_parameters(params):
    global z3str2_solver
    if 'Solver' in params:
        z3str2_solver = params['Solver']
    else:
        raise Exception("[z3str2] section must specify path to solver")

def test_with_z3str2(rawfile):
    runtime = ''
    result = ''
    verify = ''
    error = ''

    # preprocess the test case:
    # Z3-str2 doesn't know about (set-logic QF_S) so we suppress it
    tmp_f = tempfile.NamedTemporaryFile(mode="w+", suffix=".smt2", delete=False)
    testfile = tmp_f.name
    raw_f = open(rawfile, 'r')
    
    for line in raw_f:
        if "set-logic" in line:
            continue
        else:
            tmp_f.write(line)

    raw_f.close()
    tmp_f.flush()
    tmp_f.close()
    
    try:
        startTime = time.time()
        (exitCode, output, errors) = run(z3str2_solver + ' ' + testfile, shell=True, timeout=timeout)
        endTime = time.time()
        runtime = str(round( float(endTime - startTime), 3))
        if len(output) == 0:
            result = 'timeout'
        else:
            lines = output.split("\n")
            errlines = errors.split("\n")

            combined_lines = ""
            for line in lines:
                combined_lines += " " + line
            for line in errlines:
                combined_lines += " " + line    
            
            lines = [line for line in lines if line.strip()]
            # check result status
            for line in lines:
                if 'UNSAT' in line:
                    result = 'unsat'
                    error = ''
                    break
                elif 'SAT' in line:
                    result = 'sat'
                    error = ''
                    break
                elif 'UNKNOWN' in line:
                    result = 'unknown'
                    error = ''
                    break
                else:
                    result = 'error'
                    error = combined_lines
            # check verify status
            if 'v-ok' in lines[0]:
                verify = 'yes'
            elif 'v-fail' in lines[0]:
                verify = 'no'
    except Exception as e:
        result = 'crash'
        error = str(e)

    # clean up
    os.remove(testfile)
        
    return TestResult(runtime, result, verify, error)
    
## Entry point

def main():
    config = configparser.ConfigParser()
    config.read('solver_config.ini')
    if 'parameters' in config:
        read_parameters(config['parameters'])

    if run_z3:
        read_z3_parameters(config['z3'])
        
    if run_z3str2:
        read_z3str2_parameters(config['z3str2'])

    tapOutput = open(tapFile, 'w')
        
    # read all test cases
    tests = []
    nTestPoints = 0
    for testdir in testDirs:
        files = findTests(testdir)
        files.sort()
        # for now we just look at 'z3' results for TAP output, so
        # 1 test point per case (solver decided SAT/UNSAT)
        nTestPoints += len(files)
        
        for f in files:
            testpath = join(testdir, f)
            testcase = TestCase(f)
            if run_z3:
                z3_result = test_with_z3(testpath)
                testcase.solverResult['z3'] = z3_result
            if run_z3str2:
                z3str2_result = test_with_z3str2(testpath)
                testcase.solverResult['z3str2'] = z3str2_result
            tests.append(testcase)

    tapOutput.write("1.." + str(nTestPoints) + "\n")
    testpoint = 1
    for testcase in tests:
        name = testcase.filename
        solverOutput = testcase.solverResult['z3']
        result = solverOutput.result
        verify = solverOutput.verify
        solverOK = False
        if (result == 'sat' and verify == 'v-ok') or result == 'unsat':
            solverOK = True
        if solverOK:
            tapOutput.write("ok " + str(testpoint) + " - " + name + " - Solver gave a SAT/UNSAT result\n")
        else:
            tapOutput.write("not ok " + str(testpoint) + " - " + name + " - Solver gave a SAT/UNSAT result (" + result + " " + verify + ")\n")
        testpoint += 1
                
    tapOutput.close()

    # for now just summarize test output on the console
    #print("=== Test Report ===")
    #for testcase in tests:
    #print(testcase.filename + ":")
    #    if run_z3:
    #       print("Z3\t" + str(testcase.solverResult['z3']))
    #  if run_z3str2:
    #     print("Z3-str2\t" + str(testcase.solverResult['z3str2']))
    #print("===================")
        

if __name__ == '__main__':
    main()
