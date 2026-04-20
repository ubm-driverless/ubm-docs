# How to install GEOS and nanoflann and FLANN for C++

## GEOS
```bash
# To avoid permission issues, install in /usr/local
$ sudo chown -R ubm:ubm /usr/local  // Not needed if you are root

$ wget https://github.com/libgeos/geos/releases/download/3.12.1/geos-3.12.1.tar.bz2

# Unpack and setup build directory
$ tar xvfj geos-3.12.1.tar.bz2
$ cd geos-3.12.1
$ mkdir _build
$ cd _build

# Set up the build
$ cmake \
     -DCMAKE_BUILD_TYPE=Release \
     -DCMAKE_INSTALL_PREFIX=/usr/local \
     ..

# Run the build, test, install
$ make
$ ctest
$ sudo chown -R ubm:ubm /usr/local  // Not needed if you are root
$ make install

# Add the library path to the environment
$ export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

# Comment that line in the file /usr/local/include/geos/geom.h
# /usr/local/include/geos/geom.h:141:2: warning: #warning *** DEPRECATED: You are using deprecated header geom.h. Please, update your sources according to new layout of GEOS headers and namespaces [-Wcpp]
```

## nanoflann
```bash
# Download the library v1.5.5
$ cd /home/ubm/repo && mkdir nanoflann && cd nanoflann && mkdir install
$ git clone https://github.com/jlblancoc/nanoflann.git
$ mv nanoflann src

# Set up the build
$ cd src && mkdir build && cd build
$ cmake -DCMAKE_INSTALL_PREFIX=/home/ubm/repo/nanoflann/install ..
$ make
$ make install
```

## FLANN
```bash
# Download the master branch of flann-lib/flann
$ cd /home/ubm/repo && mkdir flann && cd flann && mkdir install
$ git clone https://github.com/flann-lib/flann.git
$ mv flann src

# Set up the build
$ cd src && mkdir build && cd build
$ cmake -DCMAKE_INSTALL_PREFIX=/home/ubm/repo/flann/install -DBUILD_C_BINDINGS=OFF -DBUILD_PYTHON_BINDINGS=OFF -DBUILD_MATLAB_BINDINGS=OFF -DBUILD_EXAMPLES=OFF -DBUILD_TESTS=OFF -DBUILD_DOC=OFF ..
$ make
$ make install
```
