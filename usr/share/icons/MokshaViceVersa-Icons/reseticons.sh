printf "\nRemoving icon cache and restarting related daemon (efreetd)...\n"
rm -rf ~/.cache/efreet
killall efreetd
enlightenment_remote -restart &
echo "Waiting (not done yet), will beep when all done!"
sleep 10
echo Restarting Moksha...
enlightenment_remote -restart
echo -ne '\007'
echo Tada!
