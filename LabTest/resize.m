clear;
clc;
im = imread('../Images/cat.jpg');
im = makeGray(im);
[l,w] = size(im);
nl = 1;
nw = 1;
z = input("Scaling factor: ");
for i=1:z:l
    for j=1:z:w
        new_image(nl,nw) = im(i,j);
        nw = nw + 1;
    end
    nl = nl + 1;
    nw = 1;
end
figure(1)
imshow(im)
title("main Image")
figure(2)
imshow(new_image)
title("scaled Image")