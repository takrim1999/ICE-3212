im1 = imread("cats.jpg","jpg");
R = im1(:,:,1);
G = im1(:,:,2);
B = im1(:,:,3);
im2 = R*0.2989+G*0.5870+B*0.1140;
subplot(2,1,1)
imshow(im1)
title("Main Image")
subplot(2,1,2)
imshow(im2)
title("Grayscaled Image")