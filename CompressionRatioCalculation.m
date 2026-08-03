img = imread('apricots-2444808_1920.jpg');
origial_size=numel(original_img);
compressed_img=imread('compressed_img.jpg');
compressed_size=numel(compressed_img);
compression_ratio=origial_size/compressed_size;
disp(['Compression Ratio:', num2str(compression_ratio)]);