#!/bin/zsh

# filename var
# filename_1='checksum_1'
# filename_2='checksum_2'


# ARGUMENTS IN BASH
first_filepath="$1"
second_filepath="$2"

# TEST
echo "first filename : $first_filepath"
echo "second filename : $second_filepath"
echo "----"


# while read line; do
# 	#Readind each line in sequence
# 	echo $line
# done <read_file.txt

# while read line; do
# 	echo "$line"
# done < "$first_filepath"
#

sha256sum_1=""
while read line; do
	#echo "$line"
	for ((i = 0; i < ${#line[@]}; i += 1)); do
		if [ "${line[i]}" = " " ]; 
		then 
			break
			#continue
		fi	
		sha256sum_1="$sha256sum_1${line[i]}"
	done
done < "$first_filepath"

echo "1-->$sha256sum_1-----------"

sha256sum_2=""
while read line; do
	#echo "$line"
	for ((i = 0; i < ${#line[@]}; i += 1)); do
		if [ "${line[i]}" = " " ]
		then 
			break
		fi	
		sha256sum_2="$sha256sum_2${line[i]}"
	done
done < "$second_filepath"

echo "2-->"$sha256sum_2"-----------"

if [ $sha256sum_1 = $sha256sum_2 ]; then
	echo "sha256sum are equal"
else 
	echo "sha256sum arent equal"
fi
