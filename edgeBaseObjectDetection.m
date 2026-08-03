img=imread('apricots-2444808_1920.jpg');
img1=rgb2gray(img);
edges=edge(img1,'canny');
edges2=edge(img1,'sobel');
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(edges), title('edges using canny');
subplot(2,2,3), imshow(edges2), title('edges using Sobel');