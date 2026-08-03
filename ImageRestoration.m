img = imread('apricots-2444808_1920.jpg');
gray_img = rgb2gray(img); % Convert to grayscale for 2D FFT
F = fft2(double(gray_img));

[rows, cols] = size(F);
H = ones(rows, cols);
H(120:140, 120:140) = 0; % Block a square in the frequency domain

G = F .* H; % Apply the mask directly
restored = real(ifft2(G)); % No need to use ifftshift here

restored_img = uint8(mat2gray(restored) * 255); % Normalize and convert

subplot(1,2,1), imshow(gray_img), title('Original Grayscale Image');
subplot(1,2,2), imshow(restored_img), title('Filtered (Frequency Blocked) Image');