clc;clear
close all;
im1     = imread('C:\Users\fan\Desktop\gan����ͼ\butterfly_mygan.png');
bbox1   = [170,50,40,40]; % ������ʾ����
im_loc1 = loc_show(im1,bbox1);
figure;imshow(im_loc1);
imwrite(im_loc1, ['butterfly_mygan_localshow' '.bmp']);


%im2     = imread('baby_GT.bmp');
%bbox2   = [140,170,50,50]; % ������ʾ����
%im_loc2 = loc_show(im2,bbox2);
%figure;imshow(im_loc2);
%imwrite(im_loc2, ['2' '.bmp']);