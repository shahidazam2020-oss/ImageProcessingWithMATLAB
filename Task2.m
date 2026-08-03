%resize an image and maintain aspect ratio resize an image to a
%specific width while maintaining its aspect ratio
img=imread('apricots-2444808_1920.jpg');
%resized image
resized_img=imresize(img,[253,256]);
subplot(2,2,1),imshow(img),title('Original Image');
subplot(2,2,2),imshow(resized_img),title('Resized Image');