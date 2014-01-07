#!/usr/local/bin/bash
cd /home/gst/motion/cam1

dir=$(date +"%G%m%d")

mkdir $dir
for file in $dir*.avi; do
mv $file $dir/
sleep 1
done

for t in {12..22}; do
rm *-$dir$t*.jpg
echo ls *-$dir$t*.jpg
sleep 1
done

rm *.jpg

echo Ok
