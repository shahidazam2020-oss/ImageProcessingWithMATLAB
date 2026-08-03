img=imread('apricots-2444808_1920.jpg');
gray_img=rgb2gray(img);
edges=edge(gray_img,'canny');
edges2=edge(gray_img,'sobel');
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(gray_img), title('Gray Image');
subplot(2,2,3), imshow(edges), title('Edge detection using canny Image');
subplot(2,2,4), imshow(edges2), title('edge detection using sobel Image');