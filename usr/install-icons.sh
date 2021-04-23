printf "\nThis script installs icons directly from cloned repository.\n"
echo Previous MokshaViceVersa-Icon folder is replaced.
echo Previous Remmina system tray hicolor icons are overwritten.
echo To revert tray icons you must reinstall remmina.
echo Everything else will continue to follow your selected icon theme.
echo Note: desktop files to support icons are replaced for these apps if installed:
printf "picom, groovy console, palemon, pcmanfm, discord, thunar\n\n"
if [ ! "$USER" = "root" ]; then
	printf "Installation requires sudo!\nFor example: sudo ./install-icons.sh\n\n"
	exit
fi
if [ ! -f /usr/share/applications/picom.desktop ]; then
	NOPICOM=1
fi
if [ ! -f /usr/share/applications/groovyConsole.desktop ]; then
	NOGROOVY=1
fi
if [ ! -f /usr/share/applications/palemoon.desktop ]; then
	NOMOON=1
fi
if [ ! -f /usr/share/applications/discord.desktop ]; then
	NODISCORD=1
fi
if [ -d /usr/share/icons/MokshaViceVersa-Icons ]; then
	echo removing old MokshaViceVersa-Icons folder
	rm -rf /usr/share/icons/MokshaViceVersa-Icons
fi
if [ ! -f /usr/share/applications/thunar.desktop ]; then
	NOTHUNAR=1
fi
if [ ! -f /usr/share/applications/pcmanfm.desktop ]; then
	NOPCMAN=1
fi
echo Copying files ...
cp -r ./* /usr
if [ "$NOPICOM" = 1 ]; then
	rm /usr/share/applications/picom.desktop
fi
if [ "$NOGROOVY" = 1 ]; then
	rm /usr/share/applications/groovyConsole.desktop
fi
if [ "$NOMOON" = 1 ]; then
	rm /usr/share/applications/palemoon.desktop
fi
if [ "$NODISCORD" = 1 ]; then
	rm /usr/share/applications/discord.desktop
fi
if [ "$NOTHUNAR" = 1 ]; then
	rm /usr/share/applications/thunar.desktop
fi
if [ "$NOPCMAN" = 1 ]; then
	rm /usr/share/applications/pcmanfm.desktop
fi
rm /usr/install-icons.sh
printf "Updating GTK Icon Cache...\n"
gtk-update-icon-cache /usr/share/icons/MokshaViceVersa-Icons
gtk-update-icon-cache /usr/share/icons/hicolor
printf "\nDone.\n\n"
echo If you wish to install system tray icons for additional applications not
echo supported by theme then run ./install-usericons.sh from user.config folder.
echo
