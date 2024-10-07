im1 = imread("cats.jpg","jpg");
% th = input("Threshold: ");
th = 0.5;
R = im1(:,:,1);
G = im1(:,:,2);
B = im1(:,:,3);
gray = R*0.2989+G*0.5870+B*0.1140;
[l,w] = size(gray);
for i = 1:l
    for j=1:w
        if gray(i,j) > 128
            new_image(i,j) = 255;
        else
            new_image(i,j) = 0;
        end
    end
end

subplot(2,1,1)
imshow(im1)
title("Main Image")

subplot(2,1,2)
imshow(new_image)
title("Monochrome Image")
