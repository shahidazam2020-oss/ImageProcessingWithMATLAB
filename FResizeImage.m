% Read the original image
img = imread('apricots-2444808_1920.jpg'); % Replace with your image file if needed

% Define the target width
target_width = 3000;

% Get original size
[original_height, original_width, ~] = size(img);

% Calculate the scaling factor
scale_factor = target_width / original_width;

% Compute new height to maintain aspect ratio
new_height = round(original_height * scale_factor);

% Resize the image
resized_img = imresize(img, [new_height, target_width]);

% Display original and resized images
figure;

subplot(1,2,1);
imshow(img);
title('Original Image');

subplot(1,2,2);
imshow(resized_img);
title(['Resized Image (Width = ' num2str(target_width) ')']);
