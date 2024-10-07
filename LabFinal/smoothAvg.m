clc;
clear;
image = imread('cats.jpg');
grayImage = image(:,:,1)*0.299 + image(:,:,2)*0.587 + image(:,:,3)*0.114;

noisyImage = imnoise(grayImage,"salt & pepper", 0.01);
figure(1)
imshow(noisyImage)
title("Noisy Image")

[h,w] = size(grayImage);

for i=2:h-1
    for j=2:w-1
         intensity = noisyImage(i-1,j-1) + noisyImage(i-1,j) + noisyImage(i-1,j+1) + noisyImage(i,j-1) + noisyImage(i,j) + noisyImage(i,j+1) + noisyImage(i+1,j-1) + noisyImage(i+1,j) + noisyImage(i+1,j+1);
         newImage(i,j) = round(intensity/9.0);
    end
end
figure(2)
imshow(uint8(newImage))
title("Average Filtered Image")