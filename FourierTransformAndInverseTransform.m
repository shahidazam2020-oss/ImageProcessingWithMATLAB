img = imread('apricots-2444808_1920.jpg');
F = fft2(double(img));
F_shifted = fftshift(F);
restored_img = uint8(ifft2(ifftshift(F)));

subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(log(1 + abs(F_shifted)), []), title('Fourier Transform Magnitude Spectrum');
subplot(2,2,3), imshow(restored_img), title('Restored Image From Inverse FFT');