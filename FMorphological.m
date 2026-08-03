% Read and convert the image to binary
img = imread('apricots-2444808_1920.jpg');  % Replace with your own binary image
bw = im2bw(img);           % Convert to binary if it's not already

% Define a complex/custom structuring element manually (5x5 cross + corners)
custom_SE = [1 0 1 0 1;
             0 1 1 1 0;
             1 1 1 1 1;
             0 1 1 1 0;
             1 0 1 0 1];

se = strel('arbitrary', custom_SE);  % Create structuring element

% Apply morphological operations
dilated = imdilate(bw, se);
eroded = imerode(bw, se);

% Display results
figure;
subplot(2,2,1), imshow(bw), title('Original Binary Image');
subplot(2,2,2), imshow(dilated), title('Dilated with Custom SE');
subplot(2,2,3), imshow(eroded), title('Eroded with Custom SE');
subplot(2,2,4), imshow(custom_SE, 'InitialMagnification', 'fit'), title('Custom Structuring Element');
