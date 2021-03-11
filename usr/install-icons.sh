echo
echo Use this to install these icons for use from cloned repo.
echo It overwrites some existing hicolor icons and replaces MokshaViceVersa-Icon folder.
echo
echo QBitorrent tray icon is permanently changed, even if you later switch to another theme.
echo To revert QB tray icon you must reinstall qbitorrent.  This is not ideal.
echo
echo Everything else will continue to follow your selected icon theme.
echo
echo Note: desktop files to support icons are only installed if app already installed:
echo picom, groovy console, palemon, and discord tray
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
rm /usr/install-icons.sh
echo If you wish to install system tray icons for additional applications not supported by theme
echo then run ./install-usericons.sh from user.config folder.
