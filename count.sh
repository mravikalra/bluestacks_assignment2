#/bin/sh
awk '{print $1 }' logfile |sort |uniq -c|sort -r|tail -8 >tmp.txt
awk '{print $2 " " $1 }' tmp.txt
rm -f tmp.txt