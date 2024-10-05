clear;
clc;
im = imread("../Images/cat.jpg");
figure(1)
imshow(im)
title("main Image")
figure(2)
imshow(255-im)
title("Negative Image")