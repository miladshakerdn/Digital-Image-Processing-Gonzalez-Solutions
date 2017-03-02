% DIGITAL IMAGE PROCESSING
% HOMEWORK-5 MATLAB CODE
% SUBMITTED BY CHAKRAPANI SARALAYA, SAURABH PATIL, PRANAV PHADKE
% PGM TO GENERATE GAUSSIAN NOISE IMAGE USING RANDN & IMNOISE COMMANDS
% MEAN = 0, STD DEVIATION = 50.

clear all
close all
clc

I = imread('PIC_gray.jpg');
I = im2double(I(1:256,1:256));
imshow(I)

% GENERATE A NOISE IMAGE USING RANDN 
mean = 0;
std_dev = 50;
rand_noise = I + (mean + std_dev .* randn(256));
%rand_noise = rand_noise + abs(min(min(rand_noise)));
rand_noise = rand_noise / max(max(rand_noise));

figure(); imhist(rand_noise); title('NOISE IMAGE GENERATED USING RANDN');
xlabel('Pixel Intensity'); ylabel('Number of Pixels');

% GENERATE A NOISE USING IMNOISE
I(1:256,1:256) = 0;
im_noise = imnoise(I,'gaussian',0,(50/255)^2);

figure(); imhist(im_noise); title('NOISE IMAGE GENERATED USING IMNOISE');
xlabel('Pixel Intensity'); ylabel('Number of Pixels');