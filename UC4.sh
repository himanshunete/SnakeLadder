#!/bin/bash/ -x

Noplay=0
Ladder=1
Snake=2
sum=0

Win()
{
   for ((i=0;i<=1000;i++))
   do
      diceNumber=$((RANDOM%6+1))
      option=$((RANDOM%3))
      if [ $option -eq $Noplay ]
      then
         echo NoPlay
         echo $diceNumber
      elif [ $option -eq $Ladder ]
      then
         sum=$(($diceNumber+$sum))
         echo Player moves front to position: $sum
         if [ $sum -eq 100 ]
         then
            echo Player wins
            exit
         fi 
      elif [ $option -eq $Snake ]
      then
         sum=$(($diceNumber-$sum))
         if [ $sum -lt 0 ]
         then
            sum=0
            echo Game restarts
         fi
         echo Player moves back to position: $sum
      fi
   done
}
Win



