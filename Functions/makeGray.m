function output_image_matrix = makeGray(input_image_matrix)

[R,G,B] = divideColors(input_image_matrix);

output_image_matrix = R*0.3+G*0.6+B*0.1;

end