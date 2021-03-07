# Use this to install these icons for use from cloned repo.
# It overwrites some existing hicolor icons and replaces MokshaViceVersa-Icon folder.

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
