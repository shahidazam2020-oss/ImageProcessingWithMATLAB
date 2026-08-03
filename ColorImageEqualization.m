img=imread('apricots-2444808_1920.jpg');
ycbcr_img=rgb2ycbcr(img);
y_channel=ycbcr_img(:,:,1);
equalized_y=histeq(y_channel);
ycbcr_img(:,:,1)=equalized_y;
equalized_img=ycbcr2rgb(ycbcr_img);
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(equalized_img), title('Color Image Equalized');