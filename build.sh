#!/bin/bash

make clean

./configure \
    --extra-cflags='-I/usr/include -static' \
    --extra-ldflags='-I/usr/lib -static' \
    --disable-debug \
    --disable-shared \
    --enable-static \
    --enable-gpl \
    --enable-libmp3lame \
    --enable-nonfree \
    --disable-logging \
    --disable-avdevice \
    --disable-swscale \
    --disable-postproc \
    --disable-dxva2 \
    --disable-vaapi \
    --disable-vda \
    --disable-vdpau \
    --disable-everything \
    --disable-runtime-cpudetect \
    --disable-swscale-alpha \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-ffserver \
    --disable-doc \
    --disable-htmlpages \
    --disable-manpages \
    --disable-podpages \
    --disable-txtpages \
    --enable-protocol=file \
    --enable-protocol=pipe \
    --enable-protocol=http \
    --enable-protocol=https \
    --enable-filter=aresample \
    --enable-decoder=aac \
    --enable-decoder=mp3 \
    --enable-demuxer=aac \
    --enable-demuxer=mp3 \
    --enable-parser=aac \
    --enable-parser=mpegaudio \
    --enable-muxer=mp3 \
    --enable-encoder=libmp3lame \
   # --enable-version3 \
   # --enable-libopencore-amrnb \
   # --enable-encoder=libopencore_amrnb \
   # --enable-muxer=amr \
    --enable-small

make -j 8

./ffmpeg -v 0 -formats

ls -lh ffmpeg

