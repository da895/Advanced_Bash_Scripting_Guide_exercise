#!/bin/bash
# ifs.sh

var1="a+b+c"
var2="d-e-f"
var3="g,h,i"

IFS=+
echo $var1
echo $var2
echo $var3

echo

IFS=-
echo $var1
echo $var2
echo $var3

echo

IFS="," 
echo $var1
echo $var2
echo $var3

echo

IFS=" " 
echo $var1
echo $var2
echo $var3

echo

# ======================================================== #
# However ...  TODO
# $IFS treats whitespace differently than other characters.

output_args_one_per_line()
{
	echo "arg number:$#-\"$@\""
	for arg
	do
	    echo "[$arg]"
	done
}

echo; echo "IFS=\" \""
echo "------"

IFS=" "
var=" a  b c   "
output_args_one_per_line $var


echo; echo "IFS=:"
echo "------"

IFS=":"
var=":a::b:c:::"
output_args_one_per_line $var

echo 
exit
