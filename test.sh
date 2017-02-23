#!/bin/sh


i="0"

while [ $i -lt 6 ]
do
	gcc -o test$i test$i.c
done
gcc -o test3++ test3++.c
i="0"

while [ $i -lt 3 ]
do
	echo "\n<------------------------ Test $i ---------------------->\n"
	echo "<------------------------ Original -------------------->\n"
	/usr/bin/time -l ./test$i
	echo "<-------------------------- Mine ---------------------->\n"
	./run.sh /usr/bin/time -l ./test$i
	i=$[$i+1]
done


echo "<-------------------------- Test 3 ---------------------->\n"
./run.sh ./test3
echo "<-------------------------- Test 3++ ---------------------->\n"
./run.sh ./test3++
echo "<-------------------------- Test 4 ---------------------->\n"
./run.sh ./test4
echo "<-------------------------- Test 5 ---------------------->\n"
./test5
