im1 = imread('~/Desktop/ICE-3212/Images/cat.jpg','jpg');
im2 = imread('~/Desktop/ICE-3212/Images/cats.jpg','jpg');

a = [1:0.1:100];
b = sin(a);
subplot(2,2,1)
imshow(im1)
title('Image1')

subplot(2,2,2)
imshow(im2)
title('Image2')

subplot(2,2,3)
imshow(addImages(im1,im2))
title('added Image')

subplot(2,2,4)
imshow(subtractImages(im1,im2))
title('subtracted Image')

% imshow(addImages(im1,im2));
% imshow(subtractImages(im1,im2));
% imshow(multiplyImages(im1,im2));
% imshow(divideImages(im1,im2));
