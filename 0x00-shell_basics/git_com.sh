#!/usr/bin/env bash

files_list=$(ls)
files=0
for file in $files_list:
do
	if [ "$file" != "git_com" ]
	then
		files=$((files + 1))
		git add "$file"
		git commit -m "$file"
		git push
	fi
done
echo "Total commited: $files files"
