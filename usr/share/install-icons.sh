# Use this to install these icons for use from cloned repo.
# It copies overwrites some exiting hicolor icons and
# delete and replace entire MokshaViceVersa-Icon folder.
# Its WIP so there may be some desktop files included for apps you dont have, I'll fix that later.

if [ -d /usr/share/icons/MokshaViceVersa-Icons ]; then
	echo removing old MokshaViceVersa-Icons folder
	sudo rm -rf /usr/share/icons/MokshaViceVersa-Icons
fi
if [ ! -f /usr/share/icons/MokshaViceVersa-Icons ]; then
	echo removing old MokshaViceVersa-Icons link
	sudo rm /usr/share/icons/MokshaViceVersa-Icons
fi
sudo cp -r * /usr/share
icons/MokshaViceVersa-Icons/reseticons.sh
