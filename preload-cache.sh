#!/bin/bash

plugins="buddypress.2.8.2 bbpress.2.5.2"

# Create cache directory
if [ ! -d cache ] 
then
	mkdir cache
fi

# Cache latest version of WordPress
if [ ! -d cache/core ] 
then
	mkdir cache/core
fi
wget -nc -P cache/core https://wordpress.org/wordpress-4.8.zip

# Cache plugins we use
if [ ! -d cache/plugin ] 
then
	mkdir cache/plugin
fi

#wget -nc -P cache/plugin https://downloads.wordpress.org/plugin/buddypress.2.8.2.zip
#wget -nc -P cache/plugin https://downloads.wordpress.org/plugin/bbpress.2.5.12.zip
for plugin in ${plugins}
do
	wget -nc -P cache/plugin https://downloads.wordpress.org/plugin/${plugin}.zip
done

