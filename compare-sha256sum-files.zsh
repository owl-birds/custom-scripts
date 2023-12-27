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

# while read line; do
# 	#Readind each line in sequence
# 	echo $line
# done <read_file.txt

while read line; do
	echo "$line"
done < "$first_filepath"
