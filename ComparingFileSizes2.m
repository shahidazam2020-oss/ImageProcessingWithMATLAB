img = imread('apricots-2444808_1920.jpg');

% Save as JPEG with quality 25
imwrite(img, 'compressed_quality_25.jpg', 'Quality', 25);
compressed_img_25 = dir('compressed_quality_25.jpg');

% Save as JPEG with quality 100
imwrite(img, 'compressed_quality_100.jpg', 'Quality', 100);
compressed_img_100 = dir('compressed_quality_100.jpg');

% Display file sizes
disp(['Size at Quality25: ', num2str(compressed_img_25.bytes), ' bytes']);
disp(['Size at Quality100: ', num2str(compressed_img_100.bytes), ' bytes']);