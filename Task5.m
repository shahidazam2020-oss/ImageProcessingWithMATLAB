% Read the image
img = imread('apricots-2444808_1920.jpg');          % Load sample image
gray_img = rgb2gray(img);             % Convert to grayscale

% Apply Canny edge detection at different scales
edges1 = edge(gray_img, 'Canny', [], 0.5);  % Fine detail
edges2 = edge(gray_img, 'Canny', [], 1);    % Medium detail
edges3 = edge(gray_img, 'Canny', [], 2);    % Coarse detail

% Display the results
figure;
subplot(2,2,1), imshow(gray_img), title('Original Grayscale Image');
subplot(2,2,2), imshow(edges1), title('Canny Edge (Sigma = 0.5)');
subplot(2,2,3), imshow(edges2), title('Canny Edge (Sigma = 1)');
subplot(2,2,4), imshow(edges3), title('Canny Edge (Sigma = 2)');
