# Need:
SIFT and SURF are major keypoint descriptors but is now removed from `opencv` package as they are "non-free" modules. They can not be found in `opencv_contrib` package too.

But they are so popular that there is a workaround by installing both opencv and opencv_contrib from source with some specifics. Sounds exhausting, no worries, I have compiled the steps for (Ubuntu 18 + Opencv 4) below.

# Steps:
1. Download the given shell script, run it and provide the asked paths at the start. It will take a while.
2. If everything went well, then link OpenCV 4 into your Python 3 virtual environment as following:
* Inside your enviroment, run `python --version` and accordingly check `ls /usr/local/python/cv2/python-3.6` if the version was 3.6. 
You should find something like this: `cv2.cpython-36m-x86_64-linux-gnu.so`. If not found try for this path too `/usr/local/lib/python3.6/site-packages`
* Now, go inside your python enviroment like: `cd env/lib/python3.5/site-packages/` 
* Now, make a symlink of the so file found above like: `ln -s /usr/local/python/cv2/python-3.6/cv2.cpython-36m-x86_64-linux-gnu.so cv2.so`. 
* If by mistake, you have made some mistake, simply delete the symlink and try again: `rm cv2.so`

You are all set now!!

# Test it !

Inside your enviroment:

`import cv2
cv2.__version__`

You should get `4.0.0`
