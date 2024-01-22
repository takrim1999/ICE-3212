im1 = imread('~/Desktop/ICE-3212/Images/cat.jpg','jpg');
subplot(2,2,1)
imshow(im1)
title('Image 1')
im2 = imread('~/Desktop/ICE-3212/Images/cats.jpg','jpg');
subplot(2,2,2)
imshow(im2)
title('Image 2')
% im2 = imread('~/Desktop/ICE-3212/Images/cats.jpg','jpg');
reim1 = imresize(im1,[400 600]);
reim2 = imresize(im2,[400 600]);

im3 = reim1 + reim2;
subplot(2,2,3)
imshow(im3)
title('Added Image')

% im4 = reim1 - reim2;
% subplot(2,2,4)
% imshow(im4)
% title('Subtracted Image')

im4 = reim1 * reim2;
subplot(2,2,4)
imshow(im4)
title('Multiplied Image')


