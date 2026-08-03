% Read and convert image to grayscale and double
img = imread('peppers.png');
gray = im2double(rgb2gray(img));

% Mean center the image
mean_row = mean(gray, 2);
A = gray - mean_row;

% Compute PCA
[coeff, ~, ~] = pca(A');  % Transpose for correct dimension
k = 50;  % Number of principal components
Ak = A' * coeff(:, 1:k);           % Project to lower dimension
reconstructed = (Ak * coeff(:, 1:k)')' + mean_row;  % Reconstruct

% Show original and reconstructed
subplot(1,2,1), imshow(gray), title('Original');
subplot(1,2,2), imshow(reconstructed), title(['Reconstructed, k=' num2str(k)]);
