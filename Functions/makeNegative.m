function output_image_matrix = makeNegative(input_image_matrix)

% [R,G,B] = divideColors(input_image_matrix);
% 
% R = 255 - R;
% G = 255 - G;
% B = 255 - B;

% image_matrix(:,:,1) = R;
% image_matrix(:,:,2) = G;
% image_matrix(:,:,3) = B;



% output_image_matrix = image_matrix;

output_image_matrix = 255-input_image_matrix;

end