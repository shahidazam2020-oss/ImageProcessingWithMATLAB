img = imread('apricots-2444808_1920.jpg');
gray_img=rgb2gray(img);
hsv_img=rgb2hsv(img);
subplot(2,2,1),imshow(img),('Original Image');
subplot(2,2,2),imshow(gray_img),('Gray Image');
subplot(2,2,3),imshow(hsv_img),('HSV Image');