#!/usr/bin/bash
# file name: gdrive.sh

# Change directory
cd /home/ubuntu/yolo/DistributedHTC
echo "Directory changed"

# Gdrive folder to upload to
folderId="1N6Hs1Tx1f0ubfKphI4cfGyZCGsjJCEz4"

# Upload files using loop
echo "Starting upload"
gdrive account switch 22100674@siswa.um.edu.my
for FILE in *.jpg; do
  gdrive files upload $FILE --parent $folderId
done
echo "Upload completed"

# Clean up after upload
cd /home/ubuntu/yolo/DistributedHTC
sudo rm -rf /runs/detect/*
echo "Files removed"
