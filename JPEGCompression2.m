% Read the original image
original_img = imread('apricots-2444808_1920.jpg');

% Compress the image by writing it with lower quality
imwrite(original_img, 'compressed_img.jpg', 'Quality', 9);

% Read the compressed image
compressed_img = imread('compressed_img.jpg');

% Display both images side by side
subplot(1,2,1), imshow(original_img), title('Original Image');
subplot(1,2,2), imshow(compressed_img), title('JPEG Compressed Image (Q=25)');

% Convert to grayscale for PSNR comparison
original_gray = rgb2gray(original_img);
compressed_gray = rgb2gray(compressed_img);

% Compute PSNR
psnr_val = psnr(compressed_gray, original_gray);
fprintf('PSNR between original and compressed image: %.2f dB\n', psnr_val);