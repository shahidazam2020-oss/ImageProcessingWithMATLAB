img=imread('apricots-2444808_1920.jpg');
sharpened_img=imsharpen(img);
subplot(2,2,1),imshow(img),title('Original Image');
subplot(2,2,2),imshow(sharpened_img),title('Sharpened Image');