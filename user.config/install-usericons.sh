echo This copies additional matching icons into your $HOME/.config folder.
echo It does depend on theme settings and changes can be reverted by deletion.

if [ ! -d ~/.config/hexchat ]; then
	mkdir ~/.config/hexchat
fi
if [ ! -d ~/.config/hexchat/icons ]; then
	mkdir ~/.config/hexchat/icons
fi
cp -r hexchat ~/.config/hexchat