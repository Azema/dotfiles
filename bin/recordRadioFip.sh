#!/bin/sh
NOW=$(date +”%b-%d-%y”)

cvlc --run-time=7200 http://www.tv-radio.com/station/fip_mp3/fip_mp3-128k.m3u --sout=#transcode{vcodec=h264,vb=0,scale=0,acodec=mp4a,ab=128,channels=2,samplerate=44100} --duplicate{dst=file{mux=mp4,dst=/home/azema/BenHarper-$NOW.mp4},dst=display} --no-sout-rtp-sap --no-sout-standard-sap --sout-all --ttl=1 --sout-keep
#--sout="#duplicate{dst=std{access=file,mux=raw,dst=/home/azema/myshow-$NOW.mp3}" vlc://quit ;
