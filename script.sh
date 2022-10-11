#!/usr/bin/env bash
numberRegex='^-?[0-9]+$'
possibleOperations='^[-,+,*,/]$'

echo "Enter an arithmetic operation:"
read number1 operation number2
if [[ "$number1" =~ $numberRegex ]] && [[ "$operation" =~ $possibleOperations ]] && [[ "$number2" =~ $numberRegex ]]; then
    echo $(( "$number1 $operation $number2"))
else
    echo "Operation check failed!"
fi
