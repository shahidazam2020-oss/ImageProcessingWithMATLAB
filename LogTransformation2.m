img = imread('apricots-2444808_1920.jpg');
img_double=im2double(img);
log_transformed=zeros(size(img_double));
for channel=1:3;
    c=1/log(1+max(img_double(:,:,channel),[],'all'));
    log_transformed(:,:,channel)=c*log(1+img_double(:,:,channel));
end
log_transformed = mat2gray(log_transformed);          % Normalize to [0,1]
log_transformed_uint8 = im2uint8(log_transformed);    % Then convert to uint8
subplot(1,2,1), imshow(img), title('Original Image');
subplot(1,2,2), imshow(log_transformed), title('Log Transformation');