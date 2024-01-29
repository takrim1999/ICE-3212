function output_image_matrix = makeMono(input_image_matrix,threshold)

input_image_matrix = makeGray(input_image_matrix);
mono_image_matrix = zeros(size(input_image_matrix));

[height,width,dimension] = size(input_image_matrix);

for row=1:height
    for column=1:width
        if (input_image_matrix(row,column) > (255*threshold))
            mono_image_matrix(row,column) = 255;
        end
    end
end
output_image_matrix = mono_image_matrix;
end