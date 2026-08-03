img = imread('apricots-2444808_1920.jpg');
grad_img=imdilate(img,strel('disk',1))-imerode(img,strel('disk',1));
binary_img=im2bw(img);
ggrad_img=imdilate(img,strel('disk',1))-imerode(img,strel('disk',1));
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(grad_img), title('Morphological gradiant Image');
subplot(2,2,3), imshow(binary_img), title('Gray Image');
subplot(2,2,4), imshow(ggrad_img), title('Morphological gradiant on Gray Image');
