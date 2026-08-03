img = imread('apricots-2444808_1920.jpg');
img = im2double(img); % Better precision for processing
filtered_img = zeros(size(img));

% Create a frequency mask
H = ones(size(img,1), size(img,2));
H(100:200, 100:200) = 0;

for c = 1:3
    F = fft2(img(:,:,c));
    F_shifted = fftshift(F);
    G = F_shifted .* H;
    filtered_img(:,:,c) = abs(ifft2(ifftshift(G)));
end

subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(log(1 + abs(fftshift(fft2(rgb2gray(img))))), []), title('Shifted Image');
subplot(2,2,3), imshow(filtered_img), title('Filtered Image');