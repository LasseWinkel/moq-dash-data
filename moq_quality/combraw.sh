#!/bin/bash

cd numbered_raw_frames

output="combined.raw"
: > $output

# Loop through each frame and concatenate to a single file
for i in {0..479}; do
    cat "frame-$i.raw" >> $output
done

# Use FFmpeg to convert the combined raw file into a raw video file
ffmpeg -hide_banner  -f rawvideo -pixel_format rgba -video_size 1280x720 -framerate 24 -i $output ../received_video_48_idle_naive.yuv


# Cleanup the combined raw file
rm $output
