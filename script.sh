#!/usr/bin/env bash
numberRegex='^-?[0-9]+$'
possibleOperations='^[-,+,*,/]$'

echo "Enter an arithmetic operation:"
read number1 operation number2
if [[ "$number1" =~ $numberRegex ]] && [[ "$operation" =~ $possibleOperations ]] && [[ "$number2" =~ $numberRegex ]]; then
    echo "Operation check passed!"
else
    echo "Operation check failed!"
fi
