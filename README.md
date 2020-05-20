# yolov4-potholes-detection

This project uses [AlexeyDB's fork](https://github.com/AlexeyAB/darknet) of Darknet Yolo that runs on Windows and Linux. Neural networks Yolov4 and YoloV3-spp-tiny are trained on potholes detection task with
good news.

![Pothole detection 1](https://raw.githubusercontent.com/matteobarato/yolov4-potholes-detection/master/media/2020-04-03T16%3A03%3A11.742Z.jpg)
![Pothole detection 2](https://raw.githubusercontent.com/matteobarato/yolov4-potholes-detection/master/media/2020-04-03T16%3A03%3A39.192Z.jpg)
![Pothole detection 3](https://raw.githubusercontent.com/matteobarato/yolov4-potholes-detection/master/media/2020-04-03T16%3A03%3A53.882Z.jpg)
![Pothole detection 4](https://raw.githubusercontent.com/matteobarato/yolov4-potholes-detection/master/media/2020-04-03T16%3A04%3A03.272Z.jpg)

Video: https://drive.google.com/open?id=10ggaKaNdvNXNPDodZlATNeNi3U_ICt5G
Weights: https://drive.google.com/open?id=1iBoLj_rU20c-c4j5iu17JoqOXExK_mXZ

Download the weight of the model
[YoloV4](https://drive.google.com/open?id=1lzoQJ47cjW_JwJMtoA_K86E_FOP1bsTp)
or [Yolov3-spp-tiny](https://drive.google.com/open?id=1DZBtw65OC7X5gsIdO7_j5ubWMcivRn9-).

# Getting started

1. Clone the precursor repository [AlexeyDB's fork](https://github.com/AlexeyAB/darknet) into this repository.

2. Ensure that the [Requirements](https://github.com/AlexeyAB/darknet#requirements) for this project are met. Visit the [Setup](/documentation/RUNNING_THE_PROJECT.md) page for information on setting up your environment.

3. Replace the Makefile with the one in the repository specified above or configure the file accordingly.
   For example the Makefile in the root folder of this repository is write to works on Google Colab environment, usually works well with the most of GPUs.
   <br>
   To adapt make file in order to running on CPUs move Makefile_to_CPU.sh and run:

```
sh ./Makefile_to_CPU.sh
```

4.  Run make in the root of the project.

5.  If `darknet` has compiled successfully, running ./darknet in the root of the project should return:

6.  Place the files `obj.names`, `obj.data` , `train.txt`, `test.txt`, and data/ directory of the project.
    If you want perform a small test you can also use `train_small.txt`, `test_small.txt`, `obj_small.data`.
7.  Create directory `pothole_weights` ad move into the weights file.

8.  Place the files `cfg/yolov3-spp-pothole-test.cfg` or `cfg/cfg/yolov4-spp-pothole-test.cfg`, cfg/ directory of the project.
    <br>\*-train.cfg versions are used for the training phase.</b>
    As be reported in original repository,input images with higher resolution in the prediction phase can increase significantly the accuracy.

9.  Download the dataset and place the files in .date/Pothole/ :

Images Dataset: https://drive.google.com/open?id=1QFowuq_xW<br>
Labesl Dataset: https://drive.google.com/open?id=1U4mbdx-wmWqSJZZiuoSBrP4g_6XeGzNx

So now we have all the correct files in the darknet folder

# Run
For image files:
```
./darknet detector test data/obj.data cfg/yolov4-spp-pothole-test.cfg <trained_weight_file> <image_file>
```
For video files:
```
./darknet detector demo data/obj.data cfg/yolov4-spp-pothole-test.cfg <trained_weight_file> <video_file> -out_filename <video_output>.avi
```

!!! Soon more info and a better Readme.... !!!