#!/bin/sh

MAJOR_HOME="major"

echo
echo "Compiling and mutating project"
echo "(ant major-clean major-compile)"
echo
$MAJOR_HOME/bin/ant major-clean major-compile

echo
echo "Compiling tests"
echo "(ant major-compile.tests)"
echo
$MAJOR_HOME/bin/ant major-compile.tests

echo
echo "Run tests without mutation analysis"
echo "(ant test)"
$MAJOR_HOME/bin/ant test

echo
echo "Run tests with mutation analysis"
echo "(ant mutation.test)"
$MAJOR_HOME/bin/ant mutation.test
