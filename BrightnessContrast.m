img=imread('apricots-2444808_1920.jpg');
bright_img=img+100;
contrast_img=imadjust(img,stretchlim(img),[]);
subplot(2,2,1),imshow(img),title('Original Image');
subplot(2,2,2),imshow(bright_img),title('Brightening Image');
subplot(2,2,3),imshow(contrast_img),title('Contrast Image');