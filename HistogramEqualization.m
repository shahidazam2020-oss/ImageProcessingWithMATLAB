img=imread('apricots-2444808_1920.jpg');
equalized_img=histeq(img);
subplot(2,2,1),imshow(img),title('Original Image');
subplot(2,2,2),imshow(equalized_img),title('Equalized Image');