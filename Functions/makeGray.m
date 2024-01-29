function output_image_matrix = makeGray(input_image_matrix)

[R,G,B] = divideColors(input_image_matrix);

output_image_matrix = R*0.2989+G*0.5870+B*0.1140;

end