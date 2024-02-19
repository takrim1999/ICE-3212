function output_image_matrix = resizeImage(input_image_matrix,scale)

[image_length,image_width,dimension] = size(input_image_matrix);
new_matrix = zeros(image_length*scale,image_width,dimension,'uint8');
final_matrix = zeros(image_length*scale,image_width*scale,dimension,'uint8');

for i=1:image_length
    for j=1:scale
        new_matrix(((i-1)*scale)+j,:,:) = input_image_matrix(i,:,:);
    end
end

for i=1:image_width
    for j=1:scale
        final_matrix(:,((i-1)*scale)+j,:) = new_matrix(:,i,:);
    end
end

output_image_matrix = final_matrix;

end

