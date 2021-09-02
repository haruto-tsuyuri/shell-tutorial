#!/usr/bin/env bash


# -lt : Less than left operand
# -gt : Greater than left operand
# -ne : Not equal
# -ge : Greater than or equal right operand
# -le : Less than or equal right operand

# When use expr, use ` ` , not " " or ' '.
# Then, you can use + , -, *, / , % inside expr.

# Escape
# -e "\n : new line \b backspace"

# CMD
# Use ` `
# e.g) DATE=`date`

echo "Whats you name?"
# Wait user input , PERSON変数に input messageを格納
read -r PERSON
echo "Hello, $PERSON"

readonly NAME="$PERSON"

readonly PROCESS_ID=$$


# $0 スクリプト実行パスからスクリプトパスを表示

readonly FILE_NAME=$0
echo "$PROCESS_ID"
echo "FILE NAME IS $FILE_NAME"
echo "The number of arguments supplied to a script . $#"

for TOKEN in $*
do

    echo $TOKEN

done


# ARRAY
NAMES=("name1","name2","name3")
echo "ALL ARRAY INDEX VALUE  METHOD"
echo "USE {ARRAY[*]} OR  {ARRAY[@]}"

echo "NAMES is ${NAMES[*]}"


echo $?

a=0



while [ "$a" -lt 10 ]    # this is loop1
do
   b="$a"
   while [ "$b" -ge 0 ]  # this is loop2
   do
      echo -n "$b "
      b=`expr $b - 1`
   done
   echo
   a=`expr $a + 1`
done

b=10

until [ $b -lt 10 ]
do
  echo $b
  if [ $b -eq 100 ]
  then
    break
  fi
  b=`expr $b + 1`
done


DATE=`date`
echo "Date is $DATE"

USERS=`who | wc -l`
echo "Logged in user are $USERS"

UP=`date ; uptime`
echo "Uptime is $UP"



TEST=`pwd`

echo $TEST



# hostname is null or unset, set hostname localhost the value of hostname does not change.
echo "HOSTNAME is ${HOSTNAME:-localhost}"
