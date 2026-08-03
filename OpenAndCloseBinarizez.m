img = imread('apricots-2444808_1920.jpg');
gray_img = rgb2gray(img);
bw_img = imbinarize(gray_img);  % for binary morphology

opened_img = imopen(bw_img, strel('disk', 3));
closed_img = imclose(bw_img, strel('disk', 3));
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(gray_img), title('Gray Image');
subplot(2,2,3), imshow(opened_img), title('Opened Image');
subplot(2,2,4), imshow(closed_img), title('closed Image');
