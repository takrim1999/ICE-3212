im = imread("~/Desktop/ICE-3212/Images/number.jpg");
im = makeGray(im);
figure(1)
imshow(im)
title("Image")
% size(im)
figure(2)
for i=1:8
    subplot(2,4,i)
    im1 = mod(im,2);
%     im1
    imshow(im1*255)
    title(i+"th bit")
    im=floor(im/2);
end