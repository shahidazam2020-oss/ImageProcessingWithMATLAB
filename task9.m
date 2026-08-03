% Step 1: Read and convert image to grayscale
img = imread('images(8).jpg');      % Use a built-in grayscale image
gray_img = double(img);             % Convert to double for processing

% Step 2: Define Laplacian filter
laplacian_kernel = [0 -1  0;
                   -1  4 -1;
                    0 -1  0];

% Step 3: Apply Laplacian filter
laplacian_filtered = conv2(gray_img, laplacian_kernel, 'same');

% Step 4: Enhance the image by adding the Laplacian
enhanced_img = gray_img + laplacian_filtered;

% Step 5: Display results
figure;
subplot(1,3,1), imshow(uint8(gray_img)), title('Original Image');
subplot(1,3,2), imshow(uint8(laplacian_filtered + 128)), title('Laplacian Filter Output');
subplot(1,3,3), imshow(uint8(enhanced_img)), title('Enhanced Image');
