img = imread('apricots-2444808_1920.jpg');
gray_img = rgb2gray(img);                      % Convert to grayscale
equalized_img = adapthisteq(gray_img);         % Apply AHE
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(gray_img), title('Original Grayscale Image');
subplot(2,2,3), imshow(equalized_img), title('Equalized Image');
