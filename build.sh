#!/usr/bin/env bash

#npm_package_version="${npm_package_version?Script must be run using npm}"

#docker login
#[ $? -eq 1 ] && exit 0

# NOTE: Not building this stack of images concurrently due to a known issue
# with docker concurrent builds. https://github.com/moby/moby/issues/9656

#  -t "stephenhouser/wordpress:$npm_package_version-php7.1" \
#docker build \
#  -t "stephenhouser/buddy-bbpress:latest" \
#  -t "stephenhouser/buddy-bbpress:latest-php7.1" \
#./php7.1/

#  -t "stephenhouser/wordpress:$npm_package_version-php7.0" \
docker build \
  -t "stephenhouser/buddy-bbpress:latest-php7.0" \
./php7.0/

#  -t "stephenhouser/wordpress:$npm_package_version-php5.6" \
#docker build \
#  -t "stephenhouser/buddy-bbpress:latest-php5.6" \
#./php5.6/

echo "

Successfully built images with the following tags:"

docker images stephenhouser/buddy-bbpress --format "{{.Tag}}" | sort -r
