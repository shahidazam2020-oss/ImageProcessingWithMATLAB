% Read and convert image to grayscale
img = imread('peppers.png');
gray = rgb2gray(img);

% Apply Sobel filter in horizontal direction
edge_h = edge(gray, 'Sobel', 'horizontal');

% Apply Sobel filter in vertical direction
edge_v = edge(gray, 'Sobel', 'vertical');

% Combine horizontal and vertical edges
edge_combined = edge_h | edge_v;

% Display results
figure;
subplot(2,2,1), imshow(gray), title('Original Grayscale Image');
subplot(2,2,2), imshow(edge_h), title('Sobel - Horizontal Edges');
subplot(2,2,3), imshow(edge_v), title('Sobel - Vertical Edges');
subplot(2,2,4), imshow(edge_combined), title('Combined Edges');
