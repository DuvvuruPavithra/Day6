read -p "Enter a number: " num

function palindromePrime ()
{
num=$1
num1=$num

a=0
b=0

reverse=0
while [ $num -ne 0 ]
do
	reminder=$(($num%10))
	reverse=$(( ($reverse*10)+$reminder ))
	num=$(($num/10));
done

if [ $reverse -ne $num  ]
then
 ((a++))
fi

for((i=2; i<=$(($num/2)); i++))
do
  ans=$(( $num%i ))
  if [ $ans -eq 0 ]
  then
   ((b++))
    exit    
  fi
done


if [[ $a -eq 0 && $b -eq 0 ]]
  then
   echo "0"
  elif [ $a -eq 0 ]
    then
      echo "1"
  elif [ $b -eq 0 ]
    then
      echo "2"
  else
   echo "3"  
fi  

}
result=$(palindromePrime $num)
case $result in 

        0)
	echo "The number is both Prime and Palindrome"
	;;

	1)
	echo "The number is Prime but not-Palindrome"
	;;

	2)
	echo "The number is Palindrome but not-Prime"
	;;

	3)
	echo "The number is neither Prime nor Palindrome"
	;;
esac

