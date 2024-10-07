clc;
clear;
image = imread("cats.jpg");
c = 0.5;
% grayImage = image(:,:,1)*0.299 + image(:,:,2)*0.587 + image(:,:,3)*0.114;
transformedImage = c*log(1+im2double(image));
subplot(2,2,1)
imshow(image)
title("Image")
subplot(2,2,3)
imshow(transformedImage)
title("Log Transformed Image at level " + num2str(c))
subplot(2,2,2)
imhist(image)
title("Image")
subplot(2,2,4)
imhist(transformedImage)
title("Histogram of Log Transformed Image at level " + num2str(c))
