img=imread('apricots-2523272_1920.jpg');
gray_img=rgb2gray(img);
edges=edge(gray_img,'canny');
subplot(2,2,1),imshow(img),title('Original Image')
subplot(2,2,2),imshow(gray_img),title('Gray Image')
subplot(2,2,3),imshow(edges),title('Canny Image')