# Author: Prashant Gupta

read -p "Enter absolute path of directory where downloaded packages will reside: "  INSTALL_DIR
read -p "Enter absolute path of python enivroment: "  ENV_PATH

# Step 0
. $ENV_PATH/bin/activate

# Step 1
yes | sudo apt-get update
yes | sudo apt-get upgrade
yes | sudo apt-get install build-essential cmake unzip pkg-config
yes | sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
yes | sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
yes | sudo apt-get install libxvidcore-dev libx264-dev
yes | sudo apt-get install libgtk-3-dev
yes | sudo apt-get install libatlas-base-dev gfortran
yes | sudo apt-get install python3-dev

# Step 2
cd $INSTALL_DIR
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.0.0.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.0.0.zip
unzip opencv.zip
unzip opencv_contrib.zip
mv opencv-4.0.0 opencv
mv opencv_contrib-4.0.0 opencv_contrib
rm opencv.zip
rm opencv_contrib.zip

# Step 3
yes | pip3 install numpy
cd $INSTALL_DIR/opencv
mkdir build
cd build

# Step 4
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_PYTHON_EXAMPLES=ON -D INSTALL_C_EXAMPLES=OFF -D OPENCV_ENABLE_NONFREE=ON -D OPENCV_EXTRA_MODULES_PATH=$INSTALL_DIR/opencv_contrib/modules -D PYTHON_EXECUTABLE=$ENV_PATH/bin/python -D BUILD_EXAMPLES=ON ..

make -j8

sudo make installr/local/python/cv2/python-3.5
sudo ldconfig












