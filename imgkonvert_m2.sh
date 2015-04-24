#!/bin/bash
#mejoras 1
# Script to convert all image files from a directory (parameter) into png format file
# it also reduces size


#Sanity checks



if [ $# -ne 3 ]
then
	echo "wrong script"
	echo "write:./imgkonvert_m2.sh ../imagenesCambio 1|2|3 1|2"
	echo "opciones tamanyo: 1 200x200/ 2 200x300 / 3 300x300"
	echo "opciones formato: 1 png / * gif"
	exit 1
fi

#Main code

ls -1 $1/*.jpg > imagefiles
cat imagefiles
while read imgfile 

do
case $2 in 
	1)
		if [ $3 -eq 1 ]
		then
			lengthname=${#imgfile}
			namefile=${imgfile:0:$lengthname-4}
			convert "$imgfile" -resize 200x200 "$namefile".png	
		else
			lengthname=${#imgfile}
			namefile=${imgfile:0:$lengthname-4}
			convert "$imgfile" -resize 200x200 "$namefile".gif	
			
		fi
		;;
		 

	2)
		if [ $3 -eq 1 ]
		then
			lengthname=${#imgfile}
			namefile=${imgfile:0:$lengthname-4}
			convert "$imgfile" -resize 200x300 "$namefile".png	
		else
			lengthname=${#imgfile}
			namefile=${imgfile:0:$lengthname-4}
			convert "$imgfile" -resize 200x300 "$namefile".gif	
			
		fi
		;;
	3)
		if [ $3 -eq 1 ]
		then
			lengthname=${#imgfile}
			namefile=${imgfile:0:$lengthname-4}
			convert "$imgfile" -resize 300x300 "$namefile".png	
		else
			lengthname=${#imgfile}
			namefile=${imgfile:0:$lengthname-4}
			convert "$imgfile" -resize 300x300 "$namefile".gif	
			
		fi
		;;
	*)
		echo "wrong selection"
		;;
esac
done < imagefiles
rm imagefiles
exit 0