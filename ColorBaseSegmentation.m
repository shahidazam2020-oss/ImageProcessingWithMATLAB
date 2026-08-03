img = imread('apricots-2444808_1920.jpg');
hsv_img = rgb2hsv(img);
hue_channel = hsv_img(:,:,1);

mask = (hue_channel > 0.5) & (hue_channel < 0.75);
mask_rgb = repmat(mask, [1, 1, 3]);

segmented_img = img .* uint8(mask_rgb); % FIXED here!

subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(segmented_img), title('Segmented Image');