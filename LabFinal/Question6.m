clc;
clear;
image = imread("cats.jpg");
histogram = zeros(1,256);
normalizedHistogram = zeros(1,256);
grayImage = image(:,:,1)*0.299 + image(:,:,2)*0.587 + image(:,:,3)*0.114;
[h,w] = size(grayImage);
for i=1:h
    for j=1:w
        histogram(grayImage(i,j)+1) = histogram(grayImage(i,j)+1) + 1; 
    end
end
cdf = zeros(1,256);
cdf(1) = histogram(1);
for k=2:255
    cdf(k) = cdf(k-1) + histogram(k); 
end
normalizedcdf = cdf/(h*w);

for i=1:h
    for j=1:w
        normalized_image(i,j) = round(normalizedcdf(grayImage(i,j)+1)*255);
        normalizedHistogram(normalized_image(i,j)+1) = normalizedHistogram(normalized_image(i,j)+1) + 1;
    end
end
figure(1)
imshow(grayImage)
title("Gray Version Of Image")
figure(2)
stem(histogram)
title("Histogram")
figure(3)
stem(normalizedcdf)
title("Normalized CDF of Histogram")
figure(4)
imshow(uint8(normalized_image))
title("Normalized Image")
figure(5)
stem(normalizedHistogram)
title("Normalized Histogram")
