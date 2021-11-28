#!/bin/bash
#get argument 
while true ; do
    case $1 in
        -i)
            interval=$2
            shift 2
            ;;
        -n)
            number=$2
            shift 2
            ;;
        *)
            command=$*
            break
            ;;
    esac
done
echo interval=$interval
echo number = $number
echo command =$command
#insert number to n 
n=$number

#check command work or not 

while [[ n -gt 0 ]] ; do
	$command &> /dev/null
	if [[ $? -eq 0 ]] ; then
	        echo 'exit 0 done '	
		exit 0
	else 
		sleep $interval
		echo number: $n
		((n--))
		
	echo 'exit 1'
	fi
done

echo echo 'Your command dosent work  2> ./err.txt'
exit 1

