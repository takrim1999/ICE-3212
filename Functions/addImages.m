function output_image_matrix = addImages(input_image_matrix1,input_image_matrix2)

input_image_matrix2 = adaptSize(input_image_matrix1,input_image_matrix2);
output_image_matrix = input_image_matrix1 + input_image_matrix2;

end