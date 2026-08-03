img=imread('apricots-2444808_1920.jpg');
dilated_img=imdilate(img,strel('disk',50));
eroded_img=imerode(img,strel('disk',55));
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(dilated_img), title('Dialated Image');
subplot(2,2,3), imshow(eroded_img), title('Eroded Image');
