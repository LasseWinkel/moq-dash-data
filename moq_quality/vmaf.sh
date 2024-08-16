ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_24_idle.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_24.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=idle_output_24.json:n_threads=8" \
       -f null -



### VMAF Scores ###

# GoP 48: 55.70
# GoP 24: 51.17
# GoP 12: 72.64

# GoP 48 idle: 80.18
# GoP 24 idle: 75.82
# GoP 12 idle: 73.08