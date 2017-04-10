#!/bin/bash
dest=/tmp/backup-etc
mkdir $dest

for dir in /etc/*; do
	if [ -d "$dir" ]; then
#		echo $(basename "$dir")
		temp="$dest/$(basename "$dir")"
		mkdir $temp
		cd $dir
		for file in *; do
			if ! [ -d $file ]; then
				case "$file" in
				*.conf)
#					echo "Filename: $file"
					cp $file $temp
				;;
				esac
			fi
		done
		cd ..
	fi
done
