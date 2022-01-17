echo "Enter the range to calculate power :  " $1
 
n=$1
echo $n
if [ $n -eq 0 ]
 then
  echo " 2^$n = 1 "
 else
  
    count=1
    power_of_two=1

    while [ $count -le $n ]
     do
       power_of_two=$((2*$power_of_two))
       ((count++))
    if [ $power_of_two -eq 256 ]
      then
        echo "2^$(($count-1)) = $power_of_two"
       break
    fi
     done
    if [ $power_of_two -lt 256 ]
      then
       echo "2^$(($count-1)) = $power_of_two"
    fi
fi 
