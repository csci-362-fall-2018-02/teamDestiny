#!bin/bash

#echo "test"


## TODO
## wrap output in html
## hardcode them in here

echo "<!DOCTYPE html>" > directory.html
echo "<html>" >> directory.html
echo "<head>" >> directory.html
echo "</head>" >> directory.html
echo "<body>" >> directory.html
echo "<p>" >> directory.html

ls -m >> directory.html  #saves ls print return to directory.html
#sed -i -e s/,/\\n/g directory.html

echo "</p>" >> directory.html
echo "</body>" >> directory.html
echo "</html>" >> directory.html

local=file:///$PWD/directory.html   #sets local variable local to the current file's directory formatted into URL

#echo $local   #debug to show value of local

xdg-open $local   #should open directory.html with default browser

#rm directory.html
unset local
