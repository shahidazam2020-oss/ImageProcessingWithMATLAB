img = imread('apricots-2444808_1920.jpg');
template = img(100:300, 100:300, 1);  % Example: extract a region as template

% Perform normalized cross-correlation on the red channel
c = normxcorr2(template, img(:,:,1));

% Find peak correlation
[max_c, imax] = max(abs(c(:)));
[ypeak, xpeak] = ind2sub(size(c), imax(1));

% Adjust for template size to get top-left corner
yoffSet = ypeak - size(template,1);
xoffSet = xpeak - size(template,2);

% Display result
figure, imshow(img); hold on;
rectangle('Position', [xoffSet, yoffSet, size(template,2), size(template,1)], ...
          'EdgeColor', 'r', 'LineWidth', 2);
title('Template Match');