#!/bin/bash/ -x

numberofplayer=1

dicenumber()
{
   dicenumber=$((RANDOM%6+1))
   echo Player gets a dice number: $dicenumber
}
dicenumber
