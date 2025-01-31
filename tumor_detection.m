close all;
clear all;
clc;

img = imread('BrainMRI_Images/brain1.jpg');
bw = im2bw(img, 0.7);

label = bwlabel(bw);

stats = regionprops(label, 'Solidity', 'Area');

density = [stats.Solidity];
area = [stats.Area];

high_dense_area = density > 0.5;

% region with the maximum area among high-density regions
max_area = max(area(high_dense_area));
tumor_label = find(area == max_area);

% binary image with the tumor
tumor = ismember(label, tumor_label);

% dilate the tumor region
se = strel('square', 5);
tumor = imdilate(tumor, se);

% demo
figure(2);

subplot(1, 3, 1);
imshow(img, []);
title('Brain');

subplot(1, 3, 2);
imshow(tumor, []);
title('Tumor Alone');

% boundaries of the tumor
[B, L] = bwboundaries(tumor, 'noholes');

% original
subplot(1, 3, 3);
imshow(img, []);
hold on
for i = 1:length(B)
    plot(B{i}(:,2), B{i}(:,1), 'y', 'linewidth', 1.45);
end
title('Detected Tumor');
hold off;