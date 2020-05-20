sed -i '/GPU=1/c\GPU=0' Makefile;
sed -i '/CUDNN=1/c\CUDNN=0' Makefile;
sed -i '/CUDNN_HALF=1/c\CUDNN_HALF=0' Makefile;
sed -i '/OPENCV=0/c\OPENCV=1' Makefile;
sed -i '/AVX=0/c\AVX=1' Makefile;
sed -i '/OPENMP=0/c\OPENMP=1' Makefile;
sed -i '/LIBSO=0/c\LIBSO=1' Makefile;
sed -i '/LDFLAGS+= `pkg-config --libs opencv4 2> \/dev\/null || pkg-config --libs opencv`/c\LDFLAGS+= `pkg-config --libs opencv4`' Makefile;
sed -i '/COMMON+= `pkg-config --cflags opencv4 2> \/dev\/null || pkg-config --cflags opencv`/c\COMMON+= `pkg-config --cflags opencv4`' Makefile;
