% Writing a program to compute the entropy of a given gray-scale image:

close all
clear

% Loading the image:
img = imread('Cameraman256.bmp');
% The input is a gray-scale image with pixel values in the range [0,255].
% Treat the pixel intensities in this image as symbols emitted from a DMS.

% Build a probability model (i.e., an alphabet with associated probabilities) corresponding to this input image.
% Specifically, this alphabet consists of symbols {0,1,2,...,255}.
% In order to find the probabilities associated with each symbol,
% you will need to scan over all the pixels in this image, and for each pixel,
% adjust the probability associated with that pixel's intensity value accordingly,
% or in other words find the histogram of the image. 
% Make sure you normalize the probability model correctly such that each probability is a real-valued number in [0,1].

% Compute the histogram of the grayscale image:
histogram = imhist(img);

% Normalize the histogram probabilities:
total_pixels = numel(img);
probabilities = histogram / total_pixels;

% Compute the entropy:
entropy = -sum(probabilities(probabilities > 0) .* log2(probabilities(probabilities > 0)));

% Display the entropy:
fprintf('Entropy of the image: %.2f bits\n', entropy);