img=imread('apricots-2444808_1920.jpg');
imshow(img);
gray_img=rgb2gray(img);
binary_img=im2bw(gray_img);
figure,imshow(gray_img), title('Grayscale Image');
figure,imshow(binary_img), title('Binary Image');