img = imread('apricots-2444808_1920.jpg');
imhist(img(:,:,1));
axis tight;
imhist(img(:,:,2));
axis tight;
imhist(img(:,:,3));
axis tight;
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(red_channel), title('Red Channel');
subplot(2,2,3), imshow(green_channel), title('Green Channel');
subplot(2,2,4), imshow(blue_channel), title('Blue Channel');

