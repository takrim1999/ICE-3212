clear;
clc;
im = imread("../Images/cat.jpg","jpg");
figure(1)
imshow(im)
title("Original Image")

monoIm = im(:,:,1)*0.299 + im(:,:,2)*0.587 + im(:,:,3)*0.114;
[l,w] = size(monoIm);
for i=1:l
    for j=1:w
        if monoIm(i,j) > 127
            monoIm(i,j) = 255;
        else
            monoIm(i,j) = 0;
        end
    end
end

figure(2)
imshow(monoIm)
title("Monochromed Image")