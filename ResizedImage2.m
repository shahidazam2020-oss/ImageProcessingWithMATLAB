img=imread('apricots-2444808_1920.jpg');
resized_img=imresize(img,[256,256]);
subplot(2,2,1),imshow(img),title('Original Image');
subplot(2,2,2),imshow(resized_img),title('Resized Image');