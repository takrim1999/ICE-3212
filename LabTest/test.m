close all ;
clear ;
clc ;

img = imread('office_2.jpg') ;
img = im2double(img) ;
c = 1 ;
gamma = 0.2
out_img = c* (img.^gamma) ;

subplot(121) ;
imshow(img) ;
title('Original Image') ;

subplot(122) ;
imshow(out_img) ;
title('Power law of Image') ;