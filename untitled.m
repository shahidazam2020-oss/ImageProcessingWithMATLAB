img=imread('apricots-2523272_1920.jpg');
rotated_img=imrotate(img,90);
subplot(2,1,1), imshow(img),title('Original Image');
subplot(2,1,2), imshow(rotated_img),title('Rotated Image');
