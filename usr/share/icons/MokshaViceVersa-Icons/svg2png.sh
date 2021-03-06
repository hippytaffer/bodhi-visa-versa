for file in *.svg
do 
  inkscape $file -o ${file%svg}png
done
echo "You probably want to rm *.svg now..."
