img = imread('apricots-2444808_1920.jpg');
grayImg = rgb2gray(img);
corners = detectHarrisFeatures(grayImg);  % Corrected function name

subplot(2,2,1), imshow(img), title('Original Image');

subplot(2,2,2), imshow(img);
hold on;  % Fixed typo: 'holdon' → 'hold on'
plot(corners.selectStrongest(50));  % Plot strongest 50 corners
title('Harris Corners');