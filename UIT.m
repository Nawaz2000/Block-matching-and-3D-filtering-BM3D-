yRGB = im2double(imread('imageset/image4.png'));
%randn('seed', 0);
sigma = 30;
v1 = sigma/100;
%zRGB = yRGB + (sigma/255)*randn(size(yRGB));
zRGB = imnoise(yRGB,'speckle', 0.04);
%[NA, yRGB_est] = CBM3D(1, zRGB, sigma);
[PSNR, yRGB_est] = CBM3D(yRGB, zRGB, sigma, 'np', 1);
figure;
imshow(yRGB);
title('Original image');
