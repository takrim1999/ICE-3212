function output_image_matrix2 = adaptSize(input_image_matrix1,input_image_matrix2)

[height,width,dimensions] = size(input_image_matrix1);

output_image_matrix2 = imresize(input_image_matrix2,[height,width]); 

end