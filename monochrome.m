im = imread('~/Desktop/ICE-3212/Images/cat.jpg');

% % Resizing the image to 400x400 image

im = imresize(im,[400,400]);

% % Converting to GrayScale with builtin funcction for now

im = rgb2gray(im);
size(im)
new_im = [;];
% % Slicing through image to find all values
% size(new_im)

for row=[1:400]
    for col=[1:400]
        if im(row,col)<25
            new_im(row,col)=0;
        else
            new_im(row,col)=255;
%             im(row,col);
        end
    end
end

imshow(new_im)