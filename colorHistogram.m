img = imread('apricots-2444808_1920.jpg');
subplot(2,2,1),imshow(img),title('Original  Image');
subplot(2,2,2),imhist(img(:,:,1));
axis tight,title('Red Channel Histogram');
subplot(2,2,3),imhist(img(:,:,2));
axis tight,title('Green Channel Histogram');
subplot(2,2,4),imhist(img(:,:,3));
axis tight,title('Blue Channel Histogram');
