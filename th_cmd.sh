#!/bin/sh
testing=$(date)
echo "the date and time are: " $testing

today=$(date +%y%m%d)
ls /usr/bin -al > log.$today


var1=$(echo "scale=4; 3.44/5" | bc)
echo The answer is $var1

var1=10.46
var2=43.67
var3=33.2
var4=71
var5=$(bc << EOF
scale=4
a1=($var1 * $var2)
b1=($var3 * $var4)
a1 + b1
EOF
)
echo the fianl answe for this mess is $var5

