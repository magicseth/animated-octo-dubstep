#!/bin/bash
git pull
python -m SimpleHTTPServer &
open http://localhost:8000/beborn
~/bin/subl -w beborn/index.html
kill $!
open /Applications/Utilities/Terminal.app
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

