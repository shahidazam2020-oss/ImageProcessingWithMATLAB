% Step 1: Read the image 
%compute and display and histogram of each colour channel Display the
%histograms for red, green and blue channels of an image
img = imread('apricots-2444808_1920.jpg');  % Replace with your image file

% Step 2: Separate RGB channels
R = img(:,:,1);  % Red channel
G = img(:,:,2);  % Green channel
B = img(:,:,3);  % Blue channel

% Step 3: Display the image
figure;
subplot(2,2,1);
imshow(img);
title('Original RGB Image');

% Step 4: Plot histogram of Red channel
subplot(2,2,2);
imhist(R);
title('Red Channel Histogram');
xlim([0 255]);   % Optional: limit x-axis to 0-255
colorbar off

% Step 5: Plot histogram of Green channel
subplot(2,2,3);
imhist(G);
title('Green Channel Histogram');
xlim([0 255]);
colorbar off

% Step 6: Plot histogram of Blue channel
subplot(2,2,4);
imhist(B);
title('Blue Channel Histogram');
xlim([0 255]);
colorbar off
