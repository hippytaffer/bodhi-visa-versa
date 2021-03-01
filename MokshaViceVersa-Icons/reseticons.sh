echo Removing icon cache and restarting efreet.
rm -rf ~/.cache/efreet
killall efreetd
#enlightenment_remote -restart
echo Wait for moksha restart...
sleep 5 
enlightenment_remote -restart
