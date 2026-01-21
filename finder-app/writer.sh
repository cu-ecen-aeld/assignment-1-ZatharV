#!/bin/sh

if [ $# -ne 2 ]
then
	echo "You should pass 2 arguments."
	echo "The order of arguments should be 'writefile' and 'writestr'."
	exit 1
fi

writefile=$1
writestr=$2

mkdir -p $(dirname $writefile)
echo $writestr > $writefile

exit 0
