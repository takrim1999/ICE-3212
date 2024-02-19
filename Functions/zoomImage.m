function output_image_matrix = zoomImage(input_image_matrix,scale,x_value,y_value)

out = resizeImage(input_image_matrix,scale);
[length,width,dimension] = size(input_image_matrix);

output_image_matrix = out(x_value:length+x_value,y_value:width+y_value,:);
end

