ffmpeg -hide_banner -i bbb.mp4 -vf "select='between(n\,481\,960)',setpts=PTS-STARTPTS" -r 24 trimmed_published_video.mp4

ffmpeg -i trimmed_published_video.mp4 trimmed_published_video.yuv
