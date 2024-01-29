function [red_matrix,green_matrix,blue_matrix] = divideColor(input_image_matrix)

red_matrix = input_image_matrix(:,:,1);
green_matrix = input_image_matrix(:,:,2);
blue_matrix = input_image_matrix(:,:,3);

end
