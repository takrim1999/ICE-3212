clear;
clc;
im = imread("../Images/cat.jpg","jpg");
figure(1)
imshow(im)
title("Original Image")
grayImage = 0.299*im(:,:,1)+0.587*im(:,:,2)+0.114*im(:,:,3);
figure(2)
imshow(grayImage)
title("Gray scaled Image")