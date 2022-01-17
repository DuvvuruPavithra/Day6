read -p "Enter any number :" number

power_of_two=1

for ((i=2 ;i<=$number;i++))
do
    power_of_two=$(($power_of_two*2))
done
     echo "2^$number=$power_of_two"

