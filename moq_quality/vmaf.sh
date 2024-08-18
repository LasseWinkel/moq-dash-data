ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_48_idle_naive.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_scenic.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=idle_naive_output_48_vs_scenic.json:n_threads=8" \
       -f null -

ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_48_idle_naive.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_48.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=idle_naive_output_48_vs_48.json:n_threads=8" \
       -f null -

ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_48_idle_adjusted.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_scenic.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=idle_adjusted_output_48_vs_scenic.json:n_threads=8" \
       -f null -

ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_48_idle_adjusted.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_48.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=idle_adjusted_output_48_vs_48.json:n_threads=8" \
       -f null -

ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_48_packet_loss.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_scenic.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=packet_loss_output_48_vs_scenic.json:n_threads=8" \
       -f null -

ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_48_packet_loss.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_48.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=packet_loss_output_48_vs_48.json:n_threads=8" \
       -f null -



### VMAF Scores ###

# GoP 48 packet loss: 55.70
# GoP 24 packet loss: 51.17
# GoP 12 packet loss: 72.64

# GoP 48 idle: 80.18
# GoP 24 idle: 75.82
# GoP 12 idle: 73.08