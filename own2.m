img=imread('apricots-2444808_1920.jpg');
red_channel=img(:,:,1);
blue_channel=img(:,:,2);
green_channel=img(:,:,3);
subplot(2,2,1),imshow(img),title('Original Image');
subplot(2,2,2),imshow(red_channel),title('Red Channel Image');
subplot(2,2,3),imshow(blue_channel),title('Blue Channel Image');
subplot(2,2,4),imshow(green_channel),title('Green Image');