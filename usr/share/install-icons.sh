# Use this to install these icons for use from cloned repo.
# It overwrites some exiting hicolor icons and
# deletes and replace entire MokshaViceVersa-Icon folder.
# There may be some desktop files included for apps you dont have included which go in their packages not the viceversa package.

if [ -d /usr/share/icons/MokshaViceVersa-Icons ]; then
	echo removing old MokshaViceVersa-Icons folder
	sudo rm -rf /usr/share/icons/MokshaViceVersa-Icons
fi
echo Copyiing files ...
sudo cp -r ../* /usr
icons/MokshaViceVersa-Icons/reseticons.sh
