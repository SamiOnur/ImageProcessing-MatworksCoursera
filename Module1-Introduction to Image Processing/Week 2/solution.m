clc;clear all;
img = imread("boston night.JPG");
% Enter your code below
imGray = im2gray(img);
imDouble = im2double(imGray);
imGama = imadjust(imDouble,[],[],0.5);
imRotated = imrotate(imGama, -1,"crop");
imgAdjusted = im2uint8(imRotated);
imwrite(imgAdjusted,"boston night_final.png"); %%saving as png
imshow(imgAdjusted)