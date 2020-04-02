#!/usr/bin/env bash
# This script uses ffmpeg for screen recording without sound
# "-an" parameter disables audio recording. For audio recording with codec "-acodec pcm_s16le" can be added
# "-t" parameter defining the duration of the recording time
# "-crf" parameter is defining the quality of the video by setting a compressing value. For a 4,5G - 5G DVD quality video "-crf" number should be set between 25 - 30. 
# Higher values compress more therefore quality of the video will be dropped.
# "-s" parameter is defining the screen resolution
# "-i" input parameter is set to :0.0 which is $DISPLAY parameter.
# at the end of the command line, the output file can be 

ffmpeg -f alsa -i pulse -f x11grab -r 25 -s 1366x768 -i :0.0 -an -vcodec libx264 -preset ultrafast -crf 25 -t 00:01:00 /tmp/video.avi
