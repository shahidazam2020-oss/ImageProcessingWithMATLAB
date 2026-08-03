% Step 1: Read and convert image to grayscale
img = imread('Fig0630(01)(strawberries_fullcolor).tif' ...
    );    % Built-in grayscale image
gray_img = im2double(img);        % Convert to double for better precision

% Step 2: Define Sobel filters
sobel_x = [-1 0 1; -2 0 2; -1 0 1];   % Horizontal edges
sobel_y = [-1 -2 -1; 0 0 0; 1 2 1];   % Vertical edges

% Step 3: Apply Sobel filters
edges_x = imfilter(gray_img, sobel_x, 'replicate');
edges_y = imfilter(gray_img, sobel_y, 'replicate');

% Step 4: Combine both directions (gradient magnitude)
edge_magnitude = sqrt(edges_x.^2 + edges_y.^2);

% Step 5: Display the results
figure;
subplot(2,2,1), imshow(gray_img), title('Original Image');
subplot(2,2,2), imshow(edges_x, []), title('Horizontal Edges (Sobel X)');
subplot(2,2,3), imshow(edges_y, []), title('Vertical Edges (Sobel Y)');
subplot(2,2,4), imshow(edge_magnitude, []), title('Combined Edges (Magnitude)');
