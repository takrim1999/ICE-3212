im = imread('~/Desktop/ICE-3212/Images/cat.jpg','jpg');
imshow(im)
title('Cat')
for row=[1:400]
    for col=[1:400]
        if im(row,col)<25
            new_im(row,col)=0;
        else
            new_im(row,col)=im(row,col);
        end
    end
end