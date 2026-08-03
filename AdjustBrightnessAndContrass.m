img=imread('apricots-2444808_1920.jpg');
bright_img=img+110;
contrast_img=imadjust(img,stretchlim(img),[]);
subplot(2,2,1),imshow(img),('Original Image');
subplot(2,2,2),imshow(bright_img),('Bright Image');
subplot(2,2,3),imshow(contrast_img),('Enhance Image');