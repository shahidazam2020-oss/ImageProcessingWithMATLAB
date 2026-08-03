img=imread('apricots-2444808_1920.jpg');
rotated_img=imrotate(img,180);
subplot(2,2,1),imshow(img),title('Original Image');
subplot(2,2,2),imshow(rotated_img),title('Rotated Image');