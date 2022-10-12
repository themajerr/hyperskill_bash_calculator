#!/usr/bin/env bash
numberRegex='^-?[0-9]+.?[0-9]*$'
possibleOperations='^[-,+,*,/,^]$'

offSwitch=1
echo "Welcome to the basic calculator!" | tee -a operation_history.txt

while [ $offSwitch -eq 1 ]; do
	echo "Enter an arithmetic operation or type 'quit' to quit:"
	read number1 operation number2
    echo "$number1 $operation $number2" >> operation_history.txt
	if [ "$number1" == "quit" ]; then
        echo "Goodbye!"
		offSwitch=0
	elif [[ "$number1" =~ $numberRegex ]] && [[ "$operation" =~ $possibleOperations ]] && [[ "$number2" =~ $numberRegex ]]; then
    		echo $( bc -l <<< "scale=2; $number1 $operation $number2" ) 
	else
    		echo "Operation check failed!"
	fi
done | tee -a operation_history.txt
