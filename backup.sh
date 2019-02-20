#!/bin/bash
rmdir $1$2/ 2> /dev/null
mkdir $1$2/
for (( c=3; c<=$#; c++ ))
do
	find /Users/dima_zapolsky/Desktop/ -name "*${!c}" -exec cp {} ${1}${2} ";" 2> /dev/null
done
cd $1$2/
tar -zcvf $1$2.tar.gz *
rm -r $1$2/
echo done


