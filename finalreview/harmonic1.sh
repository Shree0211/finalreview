##!/bin/bash -x

read -p "Enter any number" num

add=0

for ((i=1;i<=num;i++))
do
   #if ((i<num))
   #  then
   #        echo " 1/$i + "
   #fi

   #if ((i==num))
   #  then
   #        echo " 1/$i "
   #fi
   echo "1/$i +"

   #num=$(($(awk "BEGIN {printf \"%.2f\",$num}")))
   num=$(awk "BEGIN {printf \"%.2f\",1/${i}}")

   #num=$(awk "BEGIN {printf \"%.2f\",1/${i}}")
   echo $num;
   #add=$(($(awk "BEGIN {printf \"%.2f\",$add}")+$num))
   add=$($(awk "BEGIN {printf \"%.2f\",$add}")+$(awk "BEGIN {printf \"%.2f\",$num}"))
   echo $add
done

