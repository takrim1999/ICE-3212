im = imread("../Images/cats.jpg");
imshow(im)
figure()
imshow(log(1+im2double(im)))