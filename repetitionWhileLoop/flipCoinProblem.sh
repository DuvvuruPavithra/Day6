a=0
b=0
head=$((RANDOM));
echo $head
for ((i=0;i<=23;i++))
do
tail=$(($head%2));

     if [ $a -eq 11 ]
     then
     break
     fi

     if [ $b -eq 11 ]
     then
     break
     fi

     if [ $tail -eq 0 ]
     then
     ((a++))
     fi

    if [ $tail -eq 1 ]
     then
     ((b++))
     fi
done
echo "Head won $a times and Tail won $b times"


