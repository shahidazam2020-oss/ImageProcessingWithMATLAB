img = imread('apricots-2444808_1920.jpg');
imshow(img);
% Convert to grayscale before applying adapthisteq
gray_img = rgb2gray(img);

% Apply adaptive histogram equalization
equalized_img = adapthisteq(gray_img);

% Display the results
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(gray_img), title('Original Grayscale Image');
subplot(2,2,3), imshow(equalized_img), title('Equalized Image');
