% Step 1: Read and convert image to grayscale
img = imread('images(8).jpg');    % Use a built-in grayscale image
img = double(img);                % Convert to double for calculations

% Step 2: Apply PCA (on columns)
img_mean = mean(img);             % Mean of each column
X = img - img_mean;               % Subtract mean
[coeff, score] = pca(X);          % Perform PCA

% Step 3: Reconstruct using first k principal components
k = 20;                           % Number of components to keep
X_reconstructed = score(:,1:k) * coeff(:,1:k)';   % Approximate
img_reconstructed = X_reconstructed + img_mean;   % Add mean back

% Step 4: Show results
figure;
subplot(1,2,1), imshow(uint8(img)), title('Original Image');
subplot(1,2,2), imshow(uint8(img_reconstructed)), title(['Reconstructed (', num2str(k), ' PCs)']);
