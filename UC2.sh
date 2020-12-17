#!/bin/bash/ -x

numberOfPlayer=1

diceNumber()
{
   diceNumber=$((RANDOM%6+1))
   echo Player gets a dice number: $diceNumber
}
diceNumber
