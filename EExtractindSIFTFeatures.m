img = imread('images(7).jpg');
points = detectSURFFeatures(rgb2gray(img));
[features, valid_points] = extractFeatures(rgb2gray(img), points);
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(img); hold on;
plot(valid_points.selectStrongest(10), 'ShowOrientation', true);
title('SURF Features');