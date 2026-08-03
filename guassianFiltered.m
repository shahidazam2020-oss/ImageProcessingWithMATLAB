noisy_img = imread('apricots-2444808_1920.jpg');

% Apply Gaussian filtering
gaussian_filtered = imgaussfilt(noisy_img);       % Default sigma
gaussian_filtered2 = imgaussfilt(noisy_img, 2);   % Sigma = 2

% Display results
subplot(2,2,1), imshow(noisy_img), title('Original Image');
subplot(2,2,2), imshow(gaussian_filtered), title('Gaussian Filtered Image');
subplot(2,2,3), imshow(gaussian_filtered2), title('Gaussian Filtered Image (Sigma=2)');
