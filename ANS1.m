% Step 1: Acquire an image
img = imread('apricots-2444808_1920.jpg');
% Step 2: Convert the image to grayscale
gray_img = rgb2gray(img);
% Step 3: Convert the image to HSV color space
hsv_img = rgb2hsv(img);
figure,subplot(1,3,1),imshow(img),title('RGB Image');
subplot(1,3,2),imshow(gray_img),title('Grayscale Image');
subplot(1,3,3),imshow(hsv_img),title('HSV Image');
