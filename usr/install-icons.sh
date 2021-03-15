echo
echo Install icons directly from cloned repository.
echo Previous MokshaViceVersa-Icon folder is replaced.
echo Previous QBitorrent and Remmina tray hicolor icons are overwritten.
echo To revert tray icons you must reinstall qbitorrent or remmina.
echo Everything else will continue to follow your selected icon theme.
echo Note: desktop files to support icons only installed if app installed:
echo picom, groovy console, palemon, pcmanfm, and discord tray
echo
if [ ! "$USER" = "root" ]; then
	printf "\nInstallation requires sudo!\nFor example: sudo ./install-icons.sh\n\n"
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
if [ ! -f /usr/share/applications/pcmanfm.desktop ]; then
	NOPCMAN=1
fi
if [ -d /usr/share/icons/MokshaViceVersa-Icons ]; then
	echo removing old MokshaViceVersa-Icons folder
	rm -rf /usr/share/icons/MokshaViceVersa-Icons
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
if [ "$NOPCMAN" = 1 ]; then
	rm /usr/share/applications/pcmanfm.desktop
fi
rm /usr/install-icons.sh
echo Done.
echo If you wish to install system tray icons for additional applications not
echo supported by theme then run ./install-usericons.sh from user.config folder.
echo
