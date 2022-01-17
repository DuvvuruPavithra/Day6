echo "Think a number betwen 1 and 100"
a=100
b=0
c=40
num=100
while  [ $num -ne 0 ]
do

	read -p "If the number is greater than $c press '1' otherwise press '0': " magic
	if [ $magic -eq 1 ]
	then
		b=$c
		c=$(($b+(($a-$b)/2)))
	else
		a=$c
		c=$(($b+(($a-$b)/2)))
	fi

	if [ $a -eq $(($b+2)) ]
	then
		echo "The number you thought : " $c
		break
	fi
((num--))
done
