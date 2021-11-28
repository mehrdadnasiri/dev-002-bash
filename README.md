# dev-002-bash
for first script: 
This Bash Script useed for check a command during a intervall 
-i is for set interval time 
-n is for number of trying to run program 
and write any thing end of line that will process for command 

example: 

try -i 15 -n 10 flask app test
these parameters will be set :
  interval=15 s 
  number = 10 
  command = flask app test
  
for second scripte :
do same as first one just in second one if you don't enter any argument like -i or -n that will be get interval and number from 
ENV and if there was not any enviroment in ENV will get argument from default :


ENV Parameters:

TRY_INTERVAL=any
TRY_NUMBER=any
TRY_COMMAND=any

Default :
Number:1
Interval:1

[@dwsclass](https://github.com/dwsclass) dws-dev-002-bash
