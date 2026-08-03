% Read the input image
img = imread('peppers.png');        % Replace with your image
gray_img = rgb2gray(img);           % Convert to grayscale

% Define sigma values for multi-scale Canny
sigma_values = [0.5, 1, 2, 4];

% Create a figure to show results
figure;
subplot(2,3,1);
imshow(gray_img);
title('Original Grayscale Image');

% Apply Canny at multiple scales
for i = 1:length(sigma_values)
    sigma = sigma_values(i);
    edges = edge(gray_img, 'Canny', [], sigma);  % Adaptive thresholds
    subplot(2,3,i+1);
    imshow(edges);
    title(['Canny, Sigma = ' num2str(sigma)]);
end
