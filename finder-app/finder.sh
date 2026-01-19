#!/bin/sh

if [ $# -ne 2 ]
then
	echo "You should pass 2 arguments."
	echo "The order of arguments should be 'filesdir' and 'searchstr'."
	exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]
then
	echo "The directory does not exist."
	exit 1
fi

X=$((($(tree $filesdir | wc -l)) - $(tree -d $filesdir | wc -l)))

Y=$(grep -r $searchstr $filesdir | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"

exit 0
