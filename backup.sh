#!/bin/bash
rmdir $1$2/ 2> /dev/null
mkdir $1$2/
for (( c=3; c<=$#; c++ ))
do
	find ~/ -name "*${!c}" -exec cp --backup=numbered {} ${1}${2} ";" 2> /dev/null
done
cd $1$2/
tar -zcf $1$2.tar.gz * 2> /dev/null
rm -r $1$2/
echo done
