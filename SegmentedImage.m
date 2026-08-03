img = imread('apricots-2444808_1920.jpg');
gray_img = rgb2gray(img);

% Convert image to double for processing
gray_img = im2double(gray_img);

% Compute gradient magnitude
gmag = imgradient(gray_img);

% Initialize marker masks
foreground = false(size(gray_img));
background = false(size(gray_img));

% Define foreground and background points
foreground(100,100) = true;     % Mark one pixel as foreground
background(10,10) = true;       % Mark one pixel as background

% Run Fast Marching Method segmentation
segmented_img = imsegfmm(foreground, background);

% Display the results
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(gray_img), title('Gray Image');
subplot(2,2,3), imshow(gmag,[]), title('Gradient Magnitude');
subplot(2,2,4), imshow(segmented_img), title('Segmented Image');
