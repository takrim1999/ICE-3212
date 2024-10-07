clc;
clear;
image = imread("cats.jpg");
figure(1)
imshow(image);
title("Main Image")
[h,w,d] = size(image);
z = 2;
nh = floor(h*z);
nw = floor(w*z);
for i=1:nh
    for j=1:nw
        new_image(i,j,:) = image(ceil(i/z),ceil(j/z),:);
    end
end
figure(2)
imshow(new_image)
if z>1
    title("Zoomed Image")
elseif z<1
    title("Shrinked Image")
else
    title("No Change")
end
