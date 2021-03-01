echo Removing icon cache, restarting efreet and moksha.
rm -rf ~/.cache/efreet
killall efreetd
enlightenment_remote -restart
