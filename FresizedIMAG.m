% Read an image
img = imread('peppers.png'); 

resized_img=imresize(img,[256,256]);

figure;
subplot(1,2,1); imshow(img); title('Original Image');
subplot(1,2,2); imshow(resized_img); title('Resized to 256x256');
