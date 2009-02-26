
close all;

%Read image / kernel pair
blurredImg = im2double(imread('test7.bmp'));
kernel = im2double(imread('kernel7.bmp'));

figure, imshow(blurredImg);
title('Blurred Image');

figure, imshow(kernel);
title('Kernel');

img = deconv_shan( blurredImg, kernel(:,:,1), 0.016, 20 );

figure, imshow(img);
title('Deblurred Result');
