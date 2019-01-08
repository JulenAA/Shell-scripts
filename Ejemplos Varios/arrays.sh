#!/bin/bash
# Bash Arrays
# https://www.linuxjournal.com/content/bash-arrays
#
echo "FIRST EXAMPLE"
arr=(Hello World)
echo ${arr[0]}
echo ${arr[1]}

#${arr[*]}         # All of the items in the array
#${!arr[*]}        # All of the indexes in the array
#${#arr[*]}        # Number of items in the array
#${#arr[0]}        # Length of item zero

echo "Array size: ${#arr[*]}"

echo "Array items:"
for item in ${arr[*]}
do
    printf "   %s\n" $item
done

echo "Array indexes:"
for index in ${!arr[*]}
do
    printf "   %d\n" $index
done

echo "Array items and indexes:"
for index in ${!arr[*]}
do
    printf "%4d: %s\n" $index ${arr[$index]}
done


# SECOND EXAMPLE
echo
echo "SECOND EXAMPLE"


array=(one two three four [5]=five)

echo "Array size: ${#array[*]}"

echo "Array items:"
for item in ${array[*]}
do
    printf "   %s\n" $item
done

echo "Array indexes:"
for index in ${!array[*]}
do
    printf "   %d\n" $index
done

echo "Array items and indexes:"
for index in ${!array[*]}
do
    printf "%4d: %s\n" $index ${array[$index]}
done


# THIRD EXAMPLE
echo
echo "THIRD EXAMPLE"

array=("first item" "second item" "third" "item")

echo "Number of items in original array: ${#array[*]}"
for ix in ${!array[*]}
do
    printf "   %s\n" "${array[$ix]}"
done
echo

arr=(${array[*]})
echo "After unquoted expansion: ${#arr[*]}"
for ix in ${!arr[*]}
do
    printf "   %s\n" "${arr[$ix]}"
done
echo

arr=("${array[*]}")
echo "After * quoted expansion: ${#arr[*]}"
for ix in ${!arr[*]}
do
    printf "   %s\n" "${arr[$ix]}"
done
echo

arr=("${array[@]}")
echo "After @ quoted expansion: ${#arr[*]}"
for ix in ${!arr[*]}
do
    printf "   %s\n" "${arr[$ix]}"
done
