% Read the image
img = imread('peppers.png');  % You can replace this with your own image

% Display the image
imshow(img);
title('Select ROI with mouse');

% Let user draw a rectangular ROI on the image
roi = drawrectangle();

% Get the position of the ROI
roi_position = round(roi.Position);  % [x, y, width, height]

% Extract ROI from the image
x = roi_position(1);
y = roi_position(2);
w = roi_position(3);
h = roi_position(4);

% Crop the image using ROI
roi_img = imcrop(img, [x, y, w, h]);

% Show the extracted ROI
figure;
imshow(roi_img);
title('Extracted ROI');
