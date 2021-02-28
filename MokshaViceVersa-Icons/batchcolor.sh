# This script will recolor all icons except those in colorful folder.
if [ $# -eq 0 ]; then
	if [ -f hexcolor.log ]; then
		COLOR=`cat hexcolor.log` # use previous color
	else
		COLOR="FFFFFF" # default color white
	fi
elif [ "$1" = "help" ] || [ "$1" = "-help" ] || [ "$1" = "--help" ]; then
   echo "usage: ./recolor.sh 00AAFF"
   exit
else
   COLOR="$1"
fi

for folder in actions animations apps categories devices emblems mimetypes places status stock
do
	pushd $folder >/dev/null
	echo $folder
	mogrify -fill "#""$COLOR" -colorize 100 *.png
	rm *.png~ *.png~~ 2>/dev/null
	popd >/dev/null
done
echo "$COLOR" >hexcolor.log


