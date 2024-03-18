image = imread('Desktop/ICE-3212/Images/cats.jpg','jpg');

scale = 2;
% 
subplot(2,1,1)
imshow(image)
title("main Image")
subplot(2,1,2)
imshow(zoomImage(image,scale,250,250))
title("zoomed Image by " + scale + "x")

