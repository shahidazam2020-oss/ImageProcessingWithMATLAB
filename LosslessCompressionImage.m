img=imread('apricots-2444808_1920.jpg');
imwrite(img, 'lossless_compressed_img.png', 'Compression', 'none');
lossless_img = imread('lossless_compressed_img.png');
subplot(1,2,1), imshow(original_img), title('Original Image');
subplot(1,2,2), imshow(lossless_img), title('Lossless Compression Image');