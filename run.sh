#Created by TUANB4DUT
clear
figlet  "Files Grabber"
echo "Author : TUANB4DUT - Version : 1.0 - github.com/TUANB4DUT"
read -p "Input Domain Target :" web;
read -p "Input Extention :" ext;
read -p "Input Keyword :" keyword;
echo ""
curl -A "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0" --max-time 2  -s "https://www.google.com/search?q=site%3A$web+ext%3A$ext&oq=site%3A$web+ext%3A$ext+intext%3A%22$keyword%22&sourceid=chrome-mobile&ie=UTF-8#ip=1" -L | grep -Po '<a href="\K.*?(?=".*)' | egrep -o "(http(s)?://){1}[^'\"]+" | sed '/google/d' 2>> $web.txt && cat $web.txt 2>/dev/null
