
#!/bin/bash/ -x

Noplay=0
Ladder=1
Snake=2
sum=0

Options()
{
   diceNumber=$((RANDOM%6+1))
   option=$((RANDOM%3))
   if [ $option -eq $Noplay ]
   then
      echo NoPlay
      echo $diceNumber
   elif [ $option -eq $Ladder ]
   then
      sum=$(($sum+$diceNumber))
      echo Player moves front to position: $sum
   elif [ $option -eq $Snake ]
   then
      sum=$(($sum-$diceNumber))
      echo Player moves back to position: $sum
   fi
}

Win()
{    
   for ((i=0;i<=100;i++))
   do
      Options
      if [ $sum -eq 100 ]
      then
         echo Player wins
         exit
      fi
      if [ $sum -le 0 ]
      then
         sum=0
         echo Game restarts
      fi
   done
}
Win


