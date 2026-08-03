img = imread('images(8).jpg');  % Replace with your file

% Check if the image is RGB
if size(img, 3) == 3
    red_channel   = img(:,:,1);
    green_channel = img(:,:,2);
    blue_channel  = img(:,:,3);
else
    error('The image is not an RGB image. It has only one channel (grayscale).');
end

% Display the histograms
figure;
subplot(2,2,1); imshow(img); title('Original RGB Image');
subplot(2,2,2); imhist(red_channel); title('Red Channel Histogram'); xlim([0 255]);
subplot(2,2,3); imhist(green_channel); title('Green Channel Histogram'); xlim([0 255]);
subplot(2,2,4); imhist(blue_channel); title('Blue Channel Histogram'); xlim([0 255]);
