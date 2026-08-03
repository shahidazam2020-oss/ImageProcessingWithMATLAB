img = imread('apricots-2444808_1920.jpg');
compressed_img=imread('compressed_img.jpg');
subplot(1,2,1), imshow(original_img), title('Original Image');
subplot(1,2,2), imshow(compressed_img), title('Compression Image');