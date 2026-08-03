img = imread('images(7).jpg');
faceDetector = vision.CascadeObjectDetector();
bbox = step(faceDetector, img);
detectedimg = insertShape(img, 'rectangle', bbox);  % Fixed comma
figure, imshow(detectedimg), title('Detected Face Using Viola-Jones');