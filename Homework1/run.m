addpath('Pics/');
format long;
im = imread('Flowers.jpg');
%im = imread('FireEngine.jpg');
[pim,dim] = MakeDichromatIms(im);
montage({im, pim, dim}, 'Size', [1, 3]);

imwrite(pim,'Result_Pics/pFlowers.png','png')
imwrite(dim,'Result_Pics/dFlowers.png','png')


