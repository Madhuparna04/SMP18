i=$(head -3 $1|grep the |wc -l)
j=$(tail -4 $1| grep for |wc -l)
s=$(echo "$i*$i+$j"|bc)
head -3 $1 | sed 's/the/it/g' > temp1.txt
tail -4 $1 | sed 's/for/when/' > temp2.txt
cat temp1.txt temp2.txt | sort -r > $1
cat $1
echo "cost=$s"
rm temp1.txt temp2.txt

