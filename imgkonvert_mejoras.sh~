#!/bin/bash
#mejoras 1
# Script to convert all image files from a directory (parameter) into png format file
# it also reduces size


#Sanity checks

if [ $# -ne 2 ]
then
	echo "wrong script"
	echo "write:./imgkonvert_mejoras.sh ../imagenesCambio 1|2|3"
	exit 1
fi

#Main code

ls -1 $1/*.jpg > imagefiles
cat imagefiles
while read imgfile 

do
case $2 in 
	1)
		lengthname=${#imgfile}
		namefile=${imgfile:0:$lengthname-4}
		convert "$imgfile" -resize 200x200 "$namefile".png	
		;;
	2)
		lengthname=${#imgfile}
		namefile=${imgfile:0:$lengthname-4}
		convert "$imgfile" -resize 200x300 "$namefile".png
		;;
	3)
		lengthname=${#imgfile}
		namefile=${imgfile:0:$lengthname-4}
		convert "$imgfile" -resize 300x300 "$namefile".png
		;;
	*)
		echo "wrong selection"
		;;
esac
done < imagefiles
rm imagefiles
exit 0
