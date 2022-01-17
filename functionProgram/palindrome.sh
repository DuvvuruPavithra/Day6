read -p "Enter a number: " num

 function checkPalindrome ()
{
num=$1
reverse=0
while [ $num -ne 0 ]
do
	reminder=$(($num%10))
	reverse=$(( ($reverse*10)+$reminder ))
	num=$(($num/10));
done
echo $reverse
}

result=$(checkPalindrome $num)
if [ $num -eq $result ]
then
	echo "The number is Palindrome"
else
	echo "The number is not Palindrome"
fi
