im1 = imread("cats.jpg","jpg");
subplot(2,1,1)
imshow(im1)
title("Main Image")
subplot(2,1,2)
imshow(255-im1)
title("Negative Image")
