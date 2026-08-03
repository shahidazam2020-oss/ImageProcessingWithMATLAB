% Step 1: Read the original image
img = imread('images(8).jpg');  % Replace with your own image if needed

% Step 2: Define the desired width
desired_width = 300;
% Step 3: Get original image dimensions
[original_height, original_width, ~] = size(img);
% Step 4: Compute the new height to maintain aspect ratio
aspect_ratio = original_height / original_width;
new_height = round(desired_width * aspect_ratio);
% Step 5: Resize the image
resized_img = imresize(img, [new_height, desired_width]);
% Step 6: Display original and resized image
figure;
subplot(1,2,1);
imshow(img);
title(['Original Image (', num2str(original_width), '×', num2str(original_height), ')']);
subplot(1,2,2);
imshow(resized_img);
title(['Resized Image (', num2str(desired_width), '×', num2str(new_height), ')']);
