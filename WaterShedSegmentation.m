img = imread('apricots-2444808_1920.jpg');
gray_img = rgb2gray(img);              % Convert to grayscale
bw = imbinarize(gray_img);             % Binarize the image

bw = imcomplement(bw);                 % Invert to make objects white
bw = bwareaopen(bw, 50);               % Remove small objects

D = -bwdist(~bw);                      % Compute distance transform and invert
D(~bw) = -Inf;                         % Set background to -Inf

L = watershed(D);                      % Apply watershed segmentation

% Display results
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(gray_img), title('Gray Image');
subplot(2,2,3), imshow(bw), title('Binary Image');
subplot(2,2,4), imshow(label2rgb(L)), title('Watershed Segmentation');
