ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_gop_12_test.yuv \
       -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_12.yuv \
       -lavfi "libvmaf=log_fmt=json:log_path=test_frankenstein_gop_48_12_48_packet_loss.json:n_threads=8" \
       -f null -

# ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_delay_500_gop_24.yuv \
#        -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_24.yuv \
#        -lavfi "libvmaf=log_fmt=json:log_path=delay_500_output_24_vs_24.json:n_threads=8" \
#        -f null -

# ffmpeg -hide_banner -video_size 1280x720 -framerate 24 -pixel_format rgba -i received_video_delay_500_gop_48.yuv \
#        -video_size 1280x720 -framerate 24 -pixel_format yuv420p -i trimmed_published_video_48.yuv \
#        -lavfi "libvmaf=log_fmt=json:log_path=delay_500_output_48_vs_48.json:n_threads=8" \
#        -f null -

### VMAF Scores ###

# 50 ms - X ms && 1% - 50 ms

# GoP 48 Delay 100ms: 55.70
# GoP 24 Delay 100ms: 51.17
# GoP 12 Delay 100ms: 72.64