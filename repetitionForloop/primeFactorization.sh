read -p "Enter the number :" num

for (( i=2; i<=$num; i++ ));
do
    if [ $(($num % $i)) -eq 0 ]
then
      count=$i
      break
    fi
done
    if [  $count == $num  ];
then
     echo "It is a prime number"
else
      echo "It is not a prime factor "
      echo $count
fi
  echo "$num"   
