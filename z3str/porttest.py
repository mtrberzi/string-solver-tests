#!/usr/bin/env python3

# Z3str2 -> Z3+str test case porting script
# Usage: porttest.py testfile
# The script opens `testfile` and modifies it to be compatible with
# Z3's SMT2 parser. It writes the modified constraints to the file "testfile.smt2"
# in the current directory, overwriting that file if it already exists.

# The following changes are made to the input file:
# * (set-logic QF_S) is prepended to the contents of the file, in order to initialize the solver with the correct theory combination
# * (set-info :status unknown) is also prepended; this can be modified by hand to read "sat" or "unsat" as necessary
# * All exprs matching (declare-variable X..) are replaced by (declare-const X..)

import sys
import os.path
import re

if len(sys.argv) != 2:
    print("Usage: " + sys.argv[0] + " testfile")
    exit(1)

testIn = open(sys.argv[1], 'r')
filename = os.path.basename(sys.argv[1])
testOut = open(filename + ".smt2", "w")

testOut.write("(set-logic QF_S)\n")
testOut.write("(set-info :status unknown)\n")

re_var2const = re.compile("^\s*\(\s*declare-variable\s+")
for line in testIn:
    line2 = re_var2const.sub("(declare-const ", line)
    testOut.write(line2)

testIn.close()
testOut.close()
