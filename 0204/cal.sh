#!/bin/bash
echo "....Simple menu driven calculator...."
sum=0
i="y"
echo "Enter fitst number"
read a
echo "Enter second number"
read b
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "5.Modulus"
echo "..Enter your choice.."
read c
case $c in
1)sum=`expr $a + $b`
echo "Sum = " $sum;;
2)sum=`expr $a - $b`
echo "Diff = " $sum;;
3)sum=`expr $a \* $b`
echo "Product = " $sum;;
4)sum=`expr $a / $b`
echo "Quotient = " $sum;;
5)sum=`expr $a % $b`
echo "Remainder = " $sum;;
*)echo "Invalid choice";;
esac
echo "Do you want to continue ?"
read i
if [ $i != "y" ]
then
exit
fi
done
