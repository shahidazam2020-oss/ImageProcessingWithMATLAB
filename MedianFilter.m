img = imread('apricots-2444808_1920.jpg');
img_noisy = rgb2gray(img);

% Apply median filters
median_filtered = medfilt2(img_noisy);                   % default 3x3
median_filtered_3 = medfilt2(img_noisy, [3 20]);           % explicitly define 3x3

% Display
subplot(2,2,1), imshow(img_noisy), title('Original Image');
subplot(2,2,2), imshow(median_filtered_3), title('Filtered Image (3x3)');
subplot(2,2,3), imshow(median_filtered), title('Filtered Image (default)');
