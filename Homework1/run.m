addpath('Pics/')
im = imread('Flowers.jpg');
[pim,dim] = MakeDichromatIms(im);
montage({im, real(pim), dim}, 'Size', [1, 3]);
