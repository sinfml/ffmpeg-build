ffmpeg-build
============

### Install dependencies
```bash
sudo apt-get install zlib1g-dev libbz2-dev libghc-bzlib-dev libmp3lame-dev libvorbis-dev libtheora-dev libxvidcore-dev libx264-dev libvpx-dev libspeex-dev libexpat-dev libxml2-dev libvo-aacenc-dev libvo-amrwbenc-dev libopencore-amrnb-dev libopencore-amrwb-dev yasm gcc
```

### Download ffmpeg source
```bash
wget http://www.ffmpeg.org/releases/ffmpeg-2.2.2.tar.gz
```

### Compile ffmpeg
```
tar zxf ffmpeg-2.2.2.tar.gz
cp build.sh ffmpeg-2.2.2/
cd ffmpeg-2.1.4/
./build.sh
```
