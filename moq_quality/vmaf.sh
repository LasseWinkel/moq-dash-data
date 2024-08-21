ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_12_idle_naive.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_12.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=idle_naive_output_12_vs_12.json:n_threads=8" \
       -f null -

ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_12_idle_adjusted.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_12.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=idle_adjusted_output_12_vs_12.json:n_threads=8" \
       -f null -

ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_24_idle_naive.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_24.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=idle_naive_output_24_vs_24.json:n_threads=8" \
       -f null -

ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_24_idle_adjusted.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_24.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=idle_adjusted_output_24_vs_24.json:n_threads=8" \
       -f null -

ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_48_idle_naive.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_48.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=idle_naive_output_48_vs_48.json:n_threads=8" \
       -f null -

ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_48_idle_adjusted.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_48.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=idle_adjusted_output_48_vs_48.json:n_threads=8" \
       -f null -



### VMAF Scores ###

# GoP 48 packet loss: 55.70
# GoP 24 packet loss: 51.17
# GoP 12 packet loss: 72.64

# GoP 48 idle adjusted: 80.18
# GoP 24 idle adjusted: 75.82
# GoP 12 idle adjusted: 73.08

# GoP 48 idle naive: 78.81
# GoP 24 idle naive: 78.81
# GoP 12 idle naive: 78.73