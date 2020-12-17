
#!/bin/bash/ -x
declare -A position 

Playerposition()
{
   for((i=0;i<=100;i++))
   do
   position[$i]=0
   done
   echo Single Players position is ${position[0]}
}

Playerposition
numberOfPlayer=1

diceNumber()
{
   diceNumber=$((RANDOM%6+1))
   echo Player gets a dice number: $diceNumber
}
diceNumber


noPlay=0
ladder=1
snake=2
sum=0
Options()
{  
   for ((i=0;i<=10;i++))
   do
      diceNumber=$((RANDOM%6+1))
      option=$((RANDOM%3))
      if [ $option -eq $noPlay ]
      then
         echo NoPlay
         echo $diceNumber
      elif [ $option -eq $ladder ]
      then
         sum=$(($diceNumber+$sum))  
         echo Player moves front to position: $sum   
      elif [ $option -eq $snake ]
      then 
         sum=$(($diceNumber-$sum))
         echo Player moves back to position: $sum
      fi
   done 
}
Options








