% =========================================================================
% Test code for Super-Resolution Convolutional Neural Networks (SRCNN)
%
% Reference
%   Chao Dong, Chen Change Loy, Kaiming He, Xiaoou Tang. Learning a Deep Convolutional Network for Image Super-Resolution, 
%   in Proceedings of European Conference on Computer Vision (ECCV), 2014
%
%   Chao Dong, Chen Change Loy, Kaiming He, Xiaoou Tang. Image Super-Resolution Using Deep Convolutional Networks,
%   arXiv:1501.00092
%
% Chao Dong
% IE Department, The Chinese University of Hong Kong
% For any question, send email to ndc.forward@gmail.com
% =========================================================================

close all;
clear all;

%% read ground truth image
im = imread('Set14\comic.bmp');
%im  = imread('zebra1.bmp');

%% set parameters
up_scale = 4;
%model = 'model\9-5-5(ImageNet)\x3.mat';
% up_scale = 3;
% model = 'model\9-3-5(ImageNet)\x3.mat';
% up_scale = 3;
% model = 'model\9-1-5(91 images)\x3.mat';
% up_scale = 2;
% model = 'model\9-5-5(ImageNet)\x2.mat'; 
% up_scale = 4;
% model = 'model\9-5-5(ImageNet)\x4.mat';

%% work on illuminance only
%if size(im,3)>1
 %   img = rgb2ycbcr(im);
 %   im = img(:, :, 1);
%end
%im2 = img(:, :, 2);
%im3 = img(:, :, 3);
%im2= modcrop(im2, up_scale);
%im2 = single(im2)/255;
%im3= modcrop(im3, up_scale);
%im3 = single(im3)/255;


im_gnd = modcrop(im, up_scale);
im_gnd = single(im_gnd)/255;
im_gnd1 = shave(uint8(im_gnd * 255), [up_scale, up_scale]);

%
figure, imshow(im_gnd1); title('lenna_crop504');

%imwrite(im_b, ['Bicubic Interpolation' '.bmp']);
imwrite(im_gnd1, ['comic1crop' '.bmp']);
imwrite(im_gnd, ['comic2crop' '.bmp']);

