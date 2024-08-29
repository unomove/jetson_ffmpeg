#!/usr/bin/env bash
set -e
# need install ffmpeg from source. apt version failed to link libdav1d

# git clone https://git.ffmpeg.org/ffmpeg.git -b release/4.4 ~/ffmpeg/
# need to change  arch=compute_30,code=sm_30 to compute_75/sm_75 for jetson 
cd ~/ffmpeg 

./configure --enable-nonfree --enable-cuda-nvcc --enable-libnpp --extra-cflags=-I/usr/local/cuda/include --extra-ldflags=-L/usr/local/cuda/lib64 --enable-gpl \
--enable-gnutls \
--enable-libaom \
--enable-libass \
--enable-libfreetype \
--enable-libx264 \
--enable-libx265 \
--disable-libaom

