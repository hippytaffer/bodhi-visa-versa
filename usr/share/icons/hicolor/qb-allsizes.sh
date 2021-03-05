cp 128x128/status/qbittorrent-tray.png 128x128/status/qbittorrent-tray-dark.png
cp 128x128/status/qbittorrent-tray.png 128x128/status/qbittorrent-tray-light.png
cp -r 128x128 16x16
rm -rf 16x16/apps
rm 16x16/status/qbittorrent-tray-*.png

for folder in 22x22 24x24 32x32 36x36 48x48 64x64 72x72 96x96 192x192
do
	rm -rf $folder
	cp -r 16x16 $folder
done

