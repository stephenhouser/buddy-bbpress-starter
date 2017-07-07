#!/usr/bin/env bash

#docker login
#[ $? -eq 1 ] && exit 0

# NOTE: Not building this stack of images concurrently due to a known issue
# with docker concurrent builds. https://github.com/moby/moby/issues/9656

echo "Building php7.0 image..."
cd php7.0
  cp ../run.sh .

  docker build \
    -t "stephenhouser/buddy-bbpress:latest" \
    -t "stephenhouser/buddy-bbpress:latest-php7.0" \
    .

  rm run.sh
cd ..

#echo "Building php5.6 image..."
#cd php5.6
#  cp ../run.sh .
#
#  docker build \
#    -t "stephenhouser/buddy-bbpress:latest-php5.6" \
#    .
#
#  rm run.sh
#cd ..

docker images stephenhouser/buddy-bbpress --format "{{.Tag}}" | sort -r
echo "Done!"

