#!/usr/bin/python3

# Usage: setstatus.py testfile.smt2
# If 'testfile.smt2' contains the substring '-unsat',
# replaces all lines of the form '(set-info :status unknown)' in testfile.smt2
# with '(set-info :status unsat)'. Otherwise, overwrites with '(set-info :status sat)'.
# The remainder of the file is unchanged.

import sys
import os.path
import re

if len(sys.argv) != 2:
    print("Usage: " + sys.argv[0] + " testfile.smt2")
    exit(1)

re_unsat = re.compile(".*-unsat.*")   
filename = os.path.basename(sys.argv[1])
isUnsat = re_unsat.match(filename)

testIn = open(sys.argv[1], 'r')
testData = testIn.read()
testIn.close()

if isUnsat:
    newTestData = re.sub("set-info :status unknown", "set-info :status unsat", testData)
else:
    newTestData = re.sub("set-info :status unknown", "set-info :status sat", testData)

testOut = open(sys.argv[1], 'w')
testOut.write(newTestData)
testOut.close()
