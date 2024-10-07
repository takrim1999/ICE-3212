clc;
clear;
image = imread("cats.jpg");
% grayImage = image(:,:,1)*0.299 + image(:,:,2)*0.587 + image(:,:,3)*0.114;
c = 1;
normalizedImage = double(image)/255;
gamma = 3;
gammacorrected = c*normalizedImage.^gamma;
gammacorrected = uint8(gammacorrected*255);
imshow(gammacorrected)