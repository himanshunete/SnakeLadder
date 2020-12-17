
#!/bin/bash/ -x

declare -A Position 
for((i=0;i<=100;i++))
do
   Position[$i]=0
done

echo Single Players position is ${Position[0]}
