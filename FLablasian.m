img = imread('apricots-2444808_1920.jpg');          % Read image
gray = im2double(rgb2gray(img));     % Convert to grayscale and double

h = fspecial('laplacian', 0.2);       % Create Laplacian filter
sharp = gray - imfilter(gray, h);     % Enhance details by subtracting

imshowpair(gray, sharp, 'montage');   % Show original and enhanced side by side
title('Original Image (Left) | Enhanced Image (Right)');
