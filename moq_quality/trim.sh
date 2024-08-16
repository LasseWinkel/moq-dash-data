ffmpeg -hide_banner -i bbb-48.mp4 -vf "select='between(n\,481\,960)',setpts=PTS-STARTPTS" -r 24 trimmed_published_video_48.mp4

ffmpeg -i trimmed_published_video_48.mp4 trimmed_published_video_48.yuv
