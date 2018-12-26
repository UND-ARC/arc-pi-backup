#!/bin/bash

echo User auto-add UND-ARC

declare -A skip=(
	[pi]=1 [sshtest]=2 [debian]=3
)

for folder in $(ls -d */) ; do
	folder=${folder%?}

	if [ -n "${skip[$folder]}" ]
	then
		echo Skipping $folder
		continue
	fi

	echo Adding user $folder

	useradd -M -d /home/$folder $folder -s /bin/bash
	echo -e "$folder\n$folder" | passwd $folder
	chown -R $folder:$folder /home/$folder
done
echo Done!
