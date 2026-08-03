% Read the image
img = imread('apricots-2444808_1920.jpg');  % Replace with your own image
gray_img = rgb2gray(img);   % Convert to grayscale if it's a color image

% Apply adaptive thresholding
T = adaptthresh(gray_img, 0.5);    % 0.5 is the sensitivity (try 0.4–0.7)
binary_img = imbinarize(gray_img, T);  % Apply the threshold

% Display results
figure;
subplot(1,3,1), imshow(img), title('Original Image');
subplot(1,3,2), imshow(gray_img), title('Grayscale Image');
subplot(1,3,3), imshow(binary_img), title('Adaptive Thresholded Image');
