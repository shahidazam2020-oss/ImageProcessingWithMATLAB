% Step 1: Read the image and convert to grayscale
img = imread('apricots-2444808_1920.jpg');          % You can replace this with any image
gray_img = rgb2gray(img);           % If image is RGB

% Step 2: Apply adaptive thresholding
bw = imbinarize(gray_img, 'adaptive', 'Sensitivity', 0.5, ...         % Adjust this between 0 and 1
'ForegroundPolarity', 'dark');  % Use 'dark' if foreground is darker

% Step 3: Display the results
figure;
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(gray_img), title('Grayscale Image');
subplot(2,2,3), imshow(bw), title('Adaptive Threshold Segmentation');
