img=imread('apricots-2444808_1920.jpg');
gray_img=rgb2gray(img);
dilated_img=imdilate(img,strel('disk',19));
eroded_img=imerode(img,strel('disk',16));
subplot(2,2,1),imshow(img),title('Original Image');
subplot(2,2,2),imshow(gray_img),title('Gray Image');
subplot(2,2,3),imshow(dilated_img),title('Dialated Image');
subplot(2,2,4),imshow(eroded_img),title('Eroded Image');