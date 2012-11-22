#!/bin/bash
function sed1 {
	read -p 'Enter the name:' name
	if grep $name /etc/passwd
	then 
		echo "switch to the string of $name:"
		sed -n 's/zhang/zlx/p' /etc/passwd
	fi
}

function sed2 {
	sed 's/this/that/g' /home/zhang/桌面/mytestfile
}

function sed3 {
	a=10
	b=11
	c=$[ $a * $b ]
	echo $c
}

#loop 
function loop {
	filelist=''
	for file in `ls`
	do
		if [ -f $file ]
		then
			echo $file is a file. 
		elif [ -d $file ]
		then
			echo $file is a directory.
		else 
			echo $file not known. 
		fi
	done
    <<EOF	
	while [ $file != $PATH ]
	do 
		echo 'wrong anser'
	done
EOF
}

#loop
sed1
echo byebye!
