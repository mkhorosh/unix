#!/bin/bash
echo $$ 
echo "enter pid of output proc"
read n_out
echo "enter password"
read pas
trap "echo exit; exit 1" 2
trap "openssl aes-256-cbc -d -salt -in tmp_mes.txt -out messages.txt -k pas;cat messages.txt" 8
while true
	do
	echo 1
	if [ ! -f "messages.txt" ]
		then
		touch messages.txt
	fi
	echo 2
	if [ ! -f "tmp_mes.txt" ]
		then
		touch tmp_mes.txt
	fi
	echo 3
	read mes
	echo $mes > messages.txt
	echo 4
	openssl aes-256-cbc -a -salt -in messages.txt -out tmp_mes.txt -k pas
	echo 5
	rm -f messages.txt
	echo 6
	kill -8 $n_out
	done
