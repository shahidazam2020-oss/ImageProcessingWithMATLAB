img=imread('apricots-2444808_1920.jpg');
gray_img=rgb2gray(img);
hsv_img=rgb2hsv(img);
subplot(2,2,1),imshow(img),title('RGB image');
subplot(2,2,2),imshow(gray_img),title('Gray image');
subplot(2,2,3),imshow(hsv_img),title('HSV image');