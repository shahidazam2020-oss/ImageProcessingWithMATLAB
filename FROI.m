% Read the image
img = imread('apricots-2444808_1920.jpg');  % Replace with your image file

% Convert to grayscale for histogram equalization
gray_img = rgb2gray(img);

% Display the image and select ROI manually
figure, imshow(gray_img);
title('Select a Region of Interest (ROI)');
roi = round(getrect);  % [x, y, width, height]

% Extract the ROI
roi_patch = gray_img(roi(2):(roi(2)+roi(4)-1), roi(1):(roi(1)+roi(3)-1));

% Apply histogram equalization to the ROI
enhanced_roi = histeq(roi_patch);

% Insert enhanced ROI back into original grayscale image
enhanced_img = gray_img;
enhanced_img(roi(2):(roi(2)+roi(4)-1), roi(1):(roi(1)+roi(3)-1)) = enhanced_roi;

% Display results
figure;
subplot(1,3,1);
imshow(gray_img);
title('Original Grayscale Image');

subplot(1,3,2);
imshow(enhanced_roi);
title('Enhanced ROI');

subplot(1,3,3);
imshow(enhanced_img);
title('Image with Enhanced ROI');
