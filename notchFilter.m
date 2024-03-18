im = imread("~/Desktop/DIP/Matlab/pictures/cats.jpg","jpg");
% im = im(:,:,1)*0.3+im(:,:,2)*0.6+im(:,:,3)*0.1;
freqImage = fft(im);
[l,w] = size(freqImage);


figure(1)
imshow(im)
title("Main Image")
impixelinfo
figure(2)
imshow(freqImage)
title("Frequency Domain")
impixelinfo
% freqImage(l/2,w/2)
freqImage = filter(freqImage);
% freqImage(l/2,w/2) = 0;
figure(3)
% imshow(freqImage)
imshow(ifft(freqImage)/l)
title("Filtered Image")
% length(im)

function x = filter(imageMat)
[l,w] = size(imageMat);
a=200;
imageMat(l/2,w/2) = 0;
x = imageMat;
end