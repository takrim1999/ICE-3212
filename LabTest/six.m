clear;
clc;
im = imread("../Images/cats.jpg");
histogram = zeros(1,256);
im = 0.299*im(:,:,1)+0.587*im(:,:,2)+0.114*im(:,:,3);
[l,w] = size(im);
for i=1:l
    for j=1:w
        gray = im(i,j);
        histogram(gray+1) = histogram(gray+1)+1;
    end
end
% cdf = cumsum(histogram)/(l*w)
hist(histogram)