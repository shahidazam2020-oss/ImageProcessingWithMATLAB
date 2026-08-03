img=imread('apricots-2444808_1920.jpg');
gray_img=rgb2gray(img);
hsv_img=rgb2hsv(img);
subplot(1,3,1),imshow(img),title('Original Image');
subplot(1,3,2),imshow(gray_img),title('Gray Image');
subplot(1,3,3),imshow(hsv_img),title('HSV Image');