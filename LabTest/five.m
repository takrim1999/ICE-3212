clear;
clc;
im = imread("../Images/cats.jpg");
im = 0.299*im(:,:,1)+0.587*im(:,:,2)+0.114*im(:,:,3);
[l,w] = size(im);

% % % %  Shrinking Section % % % %
nl = 1;
nw = 1;
for i=1:2:l
    for j=1:2:w
       shrinkededIm(nl,nw) = im(i,j);
       nw=nw+1;
    end
    nl=nl+1;
    nw = 1;
end
% im
% zoomedIm
shrinkededIm = uint8(shrinkededIm);
figure(1)
imshow(im)
title("Original Image")
figure(2)
imshow(shrinkededIm)
title("Shrinked Image")

%%%% zooming section %%%%
