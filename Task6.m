% Read a built-in grayscale image and convert it to binary
img=imread('Fig0630(01)(strawberries_fullcolor).tif');
%dialated Image
dilated_img=imdilate(img,strel('disk',19));
%eroded Image
eroded_img=imerode(img,strel('disk',16));
minus_img=dilated_img-eroded_img;
subplot(2,2,1),imshow(img),title('Original Image');
subplot(2,2,2),imshow(dilated_img),title('dilated Image');
subplot(2,2,3),imshow(eroded_img),title('Eroded Image');
subplot(2,2,4),imshow(minus_img),title('Minus Image');
