#!/bin/bash
I=0
N=0

#get argument 
while true ; do
    case $1 in
        -i)
            interval=$2
	    ((I++))
            shift 2
            ;;
        -n)
            number=$2
	    ((N++))
            shift 2
            ;;
        *)
            command=$*
            break
            ;;
    esac
done 
#get parametes of number and interval from ENV if argument not import

echo 'I befor  check env is :'$I
echo 'N befor  check env is :'$N
if [[ I -eq o ]];then
	interval=$TRY_INTERVAL
	if [ -z $interval ];then
		I=0
	else
		I=2
	fi
fi
if [[ N -eq 0 ]];then
	number=$TRY_NUMBER
	if [ -z $number ];then
		N=0
	else
		N=2
	fi
fi

#set default  parameter of number and interval 
echo 'I befor  check default is :'$I
echo 'N befor  check default is :'$N
if [[ I -eq 0 ]];then

	interval=1
fi

if [[ N -eq 0 ]];then
	number=1
fi


echo interval=$interval
echo number = $number
echo command =$command
#insert number to n 
n=$number
if [[ -z $command ]];then
	echo 'please write a command'
	exit 1
fi

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

#exit 1
