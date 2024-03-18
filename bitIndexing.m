im = imread("~/Desktop/DIP/Matlab/pictures/cats.jpg","jpg");
im = 0.3*im(:,:,1)+0.6*im(:,:,2)+0.1*im(:,:,3);
figure(1)
imshow(im)
title("Image")
% size(im)
figure(2)
for i=1:8
    subplot(2,4,i)
    im1 = mod(im,2);
    imshow(im1*255)
    title(i+"th bit")
    im=floor(im/2);
end
