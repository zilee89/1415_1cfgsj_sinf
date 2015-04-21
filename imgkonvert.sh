#!/bin/bash
#Prueba modificacion JUANJO
# Script to convert all mage files from a directory (parameter) into png format file
# it also reduces size

# Sanity checks ?
# ...

# Main code

ls -1 $1/*.jpg > imagefiles
cat imagefiles
while read imgfile 
do
	lengthname=${#imgfile}
	namefile=${imgfile:0:$lengthname-4}
	convert "$1/imgfile" -resize 200x200 "$namefile".png	

done < imagefiles
rm imagefiles
exit 0
