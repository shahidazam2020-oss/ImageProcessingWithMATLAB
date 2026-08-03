img=imread('apricots-2523272_1920.jpg');
gray_img=rgb2gray(img);
threshold_img=im2bw(gray_img,0.5);
threshold_img2=im2bw(gray_img,0.25);
subplot(2,2,1),imshow(img),title('Original Image');
subplot(2,2,2),imshow(gray_img),title('Gray Image');
subplot(2,2,3),imshow(threshold_img),title('Threshole_Image');
subplot(2,2,4),imshow(threshold_img2),title('Threshold_Image2');