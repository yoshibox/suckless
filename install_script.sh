#!/bin/sh

for repo in dwm slstatus st surf
do
	git clone https://git.suckless.org/$repo
done

cp dwmconfig.h dwm/config.h
cp laptopconfig.h slstatus/laptopconfig.h
cp desktopconfig.h slstatus/desktopconfig.h
cp stconfig.h st/config.h
cp surfconfig.h surf/config.h
