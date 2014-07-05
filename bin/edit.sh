#!/bin/bash
git pull
open -W -n -a TextEdit beborn/index.html
echo "Do you wish to upload your changes?"
select yn in "Yes" "No";
do
case $yn in
Yes)
	echo "DOING IT!!"
	break
	;;
No)
	exit;;
esac
done
git add beborn/index.html
git commit -m "automatic commit"
git push
ssh betterma@bettermagician.com
echo "YIPPEE"

