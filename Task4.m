% Step 1: Read the image
img = imread('apricots-2444808_1920.jpg');  % Replace with your own image if needed]
gray_img = rgb2gray(img);     % Convert to grayscale for histogram equalization

% Step 2: Display the image and select ROI
figure, imshow(gray_img);
title('Select ROI using rectangle and double-click inside it');
roi = drawrectangle('Color','r');  % User draws a rectangle

% Wait for user to double-click to confirm ROI
wait(roi);  
roi_pos = round(roi.Position);  % [x, y, width, height]

% Step 3: Extract ROI
x = roi_pos(1); y = roi_pos(2);
w = roi_pos(3); h = roi_pos(4);
roi_crop = gray_img(y:y+h-1, x:x+w-1);  % Crop the ROI

% Step 4: Apply histogram equalization to ROI
equalized_roi = adapthisteq(roi_crop);  % Adaptive histogram equalization

% Step 5: Replace the equalized ROI back into the image
enhanced_img = gray_img;  % Copy original grayscale image
enhanced_img(y:y+h-1, x:x+w-1) = equalized_roi;

% Step 6: Display results
figure;
subplot(1,3,1); imshow(gray_img); title('Original Grayscale Image');
subplot(1,3,2); imshow(equalized_roi); title('Equalized ROI');
subplot(1,3,3); imshow(enhanced_img); title('Image with Enhanced ROI');
