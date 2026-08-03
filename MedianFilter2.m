img=imread('apricots-2444808_1920.jpg');
img_noisy=rgb2gray(img);
median_filtered=medfilt2(img_noisy);
median_filtered3=medfilt2(img_noisy,[13,29]);
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(img_noisy), title('gray Image');
subplot(2,2,3), imshow(median_filtered), title('Filtered Image');
subplot(2,2,4), imshow(median_filtered3), title('MedianFiltered Image');
