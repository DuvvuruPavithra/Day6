read -p "Enter a number: " num
echo "The prime factors of $num are: "

for ((i=2;i<=$(($num/2));i++))
do
	if [ $(($num%$i)) -eq 0 ]
	then
		echo $i
		c=0
		for ((j=2;j<$i;j++))
		do

			if [[ $(($i%$j)) -eq 0 || $i -eq 2 ]]
			then
				((c++))
				break
			fi

		done

		if [ $c -eq 0 ]
		then
			echo $i
		fi
	fi
done
