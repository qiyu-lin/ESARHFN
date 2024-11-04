clc; clear; close all;

tic; 

I1 = imread('C:/Users/jiaweilin1/Desktop/My experiment/matching1/8.6_y/SR1.png');
I2 = imread('C:/Users/jiaweilin1/Desktop/My experiment/matching1/8.6_y/SR2.png');
subplot(121); imshow(I1);   
subplot(122); imshow(I2);

I1_2 = rgb2gray(I1);  
I2_2 = rgb2gray(I2);

S = phase_C(I1_2, I2_2);
[nr, nc] = size(S);
[x, y] = meshgrid(0:nc-1, 0:nr-1);
figure; mesh(x, y, S);

M = max(max(S));
S = abs(S);
[y1, x1] = find(S == M); 


x0 = x1 - 1; x2 = x1 + 1; y0 = y1 - 1; y2 = y1 + 1;
if x0 < 1
    x0 = nc;
end
if y0 < 1
    y0 = nr;
end


ddx = (log(S(y1, x2)) - log(S(y1, x0))) / (2 * (2 * log(S(y1, x1)) - log(S(y1, x2)) - log(S(y1, x0))));
ddy = (log(S(y2, x1)) - log(S(y0, x1))) / (2 * (2 * log(S(y1, x1)) - log(S(y2, x1)) - log(S(y0, x1))));
dx = x1 - 1 + real(ddx);
dy = y1 - 1 + real(ddy);

elapsedTime = toc; 
disp(['算法运行时间: ', num2str(elapsedTime), ' 秒']); 
