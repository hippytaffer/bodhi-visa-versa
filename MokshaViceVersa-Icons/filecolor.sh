COLOR="AE9066"
if ! mogrify -fill "#""$COLOR" -colorize 100 $1;
	echo "edit file first to set color.  usage: filecolor.sh filename"
