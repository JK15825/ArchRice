#!/bin/sh
#AccuWeather (r) RSS weather tool for conky
#USAGE: weather.sh <locationcode>
#(c) Michael Seiler 2007

METRIC=0 #Should be 0 or 1; 0 for F, 1 for C

#if [ -z $1 ]; then
#    echo
#    echo "USAGE: weather.sh <locationcode>"
#    echo
#    exit 0;
#fi
#result="$(curl https://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=0\&locCode\=66502)"
result="$(curl --connect-timeout 30 -s http://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=${FAHRENHEIT}\&locCode\=$1 | perl -ne 'if (/Currently/) {chomp;/\<title\>Currently: (.*)?\<\/title\>/; print "$1"; }')"
b=":"
k=0
for (( i=0; i<${#result}; i++ )); do
  if [ "${result:$i:1}" == "$b" ]; then
      k=$i 
  fi
done
echo "${result:$k + 2}"
