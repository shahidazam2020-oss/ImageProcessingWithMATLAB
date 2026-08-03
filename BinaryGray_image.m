img=imread('apricots-2444808_1920.jpg');
imshow(img);
gray_img=rgb2gray(img);
binary_img=im2bw(gray_img);
subplot(2,2,1),imshow(img), title('Original Image');
subplot(2,2,2),imshow(gray_img), title('Grayscale Image');
subplot(2,2,3),imshow(binary_img), title('Binary Image');