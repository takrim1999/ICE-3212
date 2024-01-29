im = imread('~/Desktop/ICE-3212/Images/cat.jpg','jpg');

subplot(2,1,1)
imshow(im)
title('Image')

subplot(2,1,2)
imshow(makeMono(im,0.3))
title('MonoChrome Image')

