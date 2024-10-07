im1 = imread("cats.jpg","jpg");
im2 = imread("cats2.jpg","jpg");
subplot(2,2,1)
imshow(im1)
title("Cats1")
subplot(2,2,3)
imshow(im2)
title("Cats2")
[l,w,d] = size(im1);
im2 = imresize(im2,[l,w]);
subplot(2,2,2)
imshow(im1+im2)
title("Addition")
subplot(2,2,4)
imshow(im1-im2)
title("Subtraction")