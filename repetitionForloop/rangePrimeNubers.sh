read -p "Enter the range : " num

echo "The prime numbers between 0 and $num are : "

for (( i=2 ; i<=$num ; i++ ))
do
   count=0
    for (( j=2 ; j<$i ; j++ ))
      do
        if [ $(($i % $j)) -eq 0 ] 
          then
              count=1
              break
         fi
       done
        
        if [ $count -eq 0 ]
         then
             echo $i is prime number
        fi
done            
       


