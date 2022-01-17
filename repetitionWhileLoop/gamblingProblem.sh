money=100
totalBet=0
totalBetWon=0

while [[ $money -gt 0 && $money -lt 200 ]]
do
 ((--money))
 ((++totalBet))
num=$((RANDOM%2))
if [ $num -eq 1 ]
then
  ((totalBetWon++))
 money=$(($money+2))
fi
done
 echo "Total money is equal to $money"
 echo "Total Number bet made $totalBet"
 echo "Total Number bet won $totalBetWon"

