#!/bin/bash

# Script to convert all mage files from a directory (parameter) into png format file
# it also reduces size
# Para mas opciones de conversion de imagen- (convert man) en el terminal

# Sanity checks ?
# ...

# Main code

ls -1 $1/*.jpg > imagefiles
cat imagefiles
while read imgfile 
do
lengthname=${#imgfile}
	namefile=${imgfile:0:$lengthname-4}
	convert "$imgfile" -monochrome "$namefile"1.jpg
	
done < imagefiles
rm imagefiles
exit 0
