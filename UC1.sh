#!/bin/bash/ -x

declare -A Position 
for((i=0;i<=100;i++))
do
   Position[$i]=0
done

echo ${Position[0]}

for ((j=0;j<=50;j++))
do
   SinglePlayer=$((RANDOM%99+1))
   if [ ${Position[0]} -ne 0 ]
   then
      Dice=$((RANDOM%6+1))            
      ((Position[ $SinglePlayer]++))
      Dice=$((RANDOM%6+1))      
      echo $Dice  
   fi
done

