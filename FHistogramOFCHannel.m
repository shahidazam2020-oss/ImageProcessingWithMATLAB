% Read the image
img = imread('apricots-2444808_1920.jpg');  % Replace with your image file if needed

% Split the image into R, G, B channels
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

% Display original image
figure;
subplot(2,2,1);
imshow(img);
title('Original Image');

% Display histogram of Red channel
subplot(2,2,2);
imhist(R);
title('Red Channel Histogram');
xlabel('Intensity Value'); ylabel('Pixel Count');
xlim([0 255]);

% Display histogram of Green channel
subplot(2,2,3);
imhist(G);
title('Green Channel Histogram');
xlabel('Intensity Value'); ylabel('Pixel Count');
xlim([0 255]);

% Display histogram of Blue channel
subplot(2,2,4);
imhist(B);
title('Blue Channel Histogram');
xlabel('Intensity Value'); ylabel('Pixel Count');
xlim([0 255]);
