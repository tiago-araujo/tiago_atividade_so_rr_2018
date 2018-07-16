#!/bin/sh

date
#n="$RANDOM"
sed -n '/-/{p;q;}' frases


echo "== Disco Rígido =="
echo "Ocupado: " 
df |grep /  | awk '{total += $3};END {total/=1048576} ;  END {print total}'
echo "Livre: " 
df |grep /  | awk '{total += $4};END {total/=1048576} ;  END {print total}'

echo "== Memória RAM =="
echo "Ocupado: " 
free -h | grep Mem | awk '{print $3}'
echo "Livre: " 
free -h | grep Mem | awk '{print $4}'

echo "== Downloads =="
ls ~/Downloads/

echo "== Home =="
echo "Videos: " 
ls -R ~ |grep .mp4 | wc -l
echo "Imagens: " 
ls -R ~ |grep .jpg | wc -l
echo "Músicas: " 
ls -R ~ |grep .mp3 | wc -l