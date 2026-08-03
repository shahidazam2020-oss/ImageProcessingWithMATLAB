img = imread('apricots-2444808_1920.jpg');
img1 = rgb2gray(img);
[pc, ~, ~] = phasecong2(img1); % Requires external function

pc_normalized = mat2gray(pc);

subplot(1,2,1), imshow(img1), title('Grayscale Image');
subplot(1,2,2), imshow(pc_normalized), title('Phase Congruency Map');
