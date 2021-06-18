# Need:
SIFT and SURF are major keypoint descriptors but is now removed from `opencv` package as they are "non-free" modules. They can not be found in `opencv_contrib` package too.

But they are so popular that there is a workaround by installing both opencv and opencv_contrib from source with some specifics. Sounds exhausting, no worries, I have compiled the steps for (Ubuntu 18 + Opencv 4) below.

# Steps:
Before starting, be ready with following arguments:
* Absolute path of directory where downloaded packages will reside
* Absolute path of python enivroment
* Check python version using 'python --version', it should be like Python 3.x.y. Like enter 6 for Python 3.6.9

Download the given shell script, run it and provide the asked arguments at the start. It will take a while, sit back and relax !

You are all set now!!

# Test it !

Inside your enviroment:

`import cv2
cv2.__version__`

You should get `4.0.0`

Also, try using SIFT:
`sift = cv2.xfeatures2d.SIFT_create()`
It should not give any error

