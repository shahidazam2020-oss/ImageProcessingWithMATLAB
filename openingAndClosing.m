img=imread('apricots-2444808_1920.jpg');
opened_img = imopen(img, strel('disk', 3));
closed_img = imclose(img, strel('disk', 3));
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(opened_img), title('Opened Image');
subplot(2,2,3), imshow(closed_img), title('closed Image');

