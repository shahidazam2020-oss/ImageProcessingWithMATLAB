img=imread('apricots-2444808_1920.jpg');
imwrite(img,'compressed_img.jpg','Quality',75);
compressed_img=imread('compressed_img.jpg');
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(compressed_img), title('compressed Image(JPEG');