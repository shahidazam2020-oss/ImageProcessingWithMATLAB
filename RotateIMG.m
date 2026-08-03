img = imread('peppers.png');
rotated_img=imrotate(img, 80);
figure;
subplot(1,2,1); imshow(img); title('Original Image');
subplot(1,2,2); imshow(rotated_img); title('Rotate Image');