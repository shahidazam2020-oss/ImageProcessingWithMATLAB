img=imread('apricots-2444808_1920.jpg');
gray_img=rgb2gray(img);
T=adaptthresh(gray_img, 0.5);
binary_img= imbinarize(gray_img, T);
subplot(1,3,1),imshow(img),title('Original Image');
subplot(1,3,2),imshow(gray_img),title('Gray Image');
subplot(1,3,3),imshow(binary_img),title('Binary Image');