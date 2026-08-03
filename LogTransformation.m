img = imread('apricots-2444808_1920.jpg');
c = 255 / log(1 + double(max(img(:))));
log_transformed = c * log(1 + double(img));

subplot(1,2,1), imshow(img), title('Original Image');
subplot(1,2,2), imshow(uint8(log_transformed)), title('Log Transformation');
