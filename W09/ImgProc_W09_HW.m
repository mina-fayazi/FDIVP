% You will get hands-on experience in JPEG image compression.

close all
clear

% Load the original 8-bit grayscale image into a MATLAB array of type 'uint8':
original_image = imread('Cameraman256.bmp');

% Perform JPEG compression with quality level 10:
imwrite(original_image, 'compressed_quality_10.jpg', 'jpg', 'quality', 10);
compressed_image_10 = imread('compressed_quality_10.jpg');

% Convert arrays into 'double' to compute the PSNR:
original_image_double = im2double(original_image);
compressed_image_10_double = im2double(compressed_image_10);
psnr = psnr(original_image_double, compressed_image_10_double);

% Display the original and compressed images:
subplot(1, 2, 1);
imshow(original_image);
title('Original Image');

subplot(1, 2, 2);
imshow(compressed_image_10);
title('JPEG Compression');

% Display the PSNR value:
fprintf('PSNR = %.2f', psnr);