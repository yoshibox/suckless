#!/bin/sh

for repo in dwm slstatus st surf
do
	[ ! -d "$repo" ] && git clone https://git.suckless.org/$repo
done


ln -s $PWD/dwmconfig.h $PWD/dwm/config.h

echo Which configuration do you want for slstatus
echo 1 : desktop
echo 2: laptop

read choice

if [ $choice -eq 1 ]
then
	ln -s $PWD/desktopconfig.h $PWDslstatus/config.h
elif [ $choice -eq 2 ]
then
	ln -s $PWD/laptopconfig.h $PWD/slstatus/config.h
else
	echo Mettre un message d\'erreur
fi

ln -s $PWD/stconfig.h $PWD/st/config.h
ln -s $PWD/surfconfig.h $PWD/surf/config.h
