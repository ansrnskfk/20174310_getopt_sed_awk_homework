#!/bin/bash

help()
{
echo "<options>"
	echo "	-h	도움말"
	echo "	-p ARG	받은 인자를 출력해주는  opt"
	echo "	-f	fruit.txt를 보여주는 opt"
	echo "	-a	animal.txt.를 보여주는 opt"
}

while getopts "p:fah" opt
do
	case $opt in
	p) echo "argument: ${OPTARG}"
	;;
	f) cat fruit.txt
	;;
	a) cat animal.txt
	;;
	h) help
	;;
	\?) echo "invalid option. try to -h option"
	;;
	esac
done
