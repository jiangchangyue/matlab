w=imread('IMG_20190907_112945_��ͼ��.jpg');
imtool(w)
w1=rgb2gray(w);
w2=edge(w1);
%figure;
imtool(~w2);