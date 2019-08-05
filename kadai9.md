# 課題9レポート

標準画像「阿部寛」を原画像とする．この画像は縦414画像，横350画素による長方形のディジタルカラー画像である．

ORG = imread('http://abehiroshi.la.coocan.jp/abe-top-20190328-2.jpg'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

によって，原画像を読み込み，グレースケールで表示した結果を図1に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai9_1.png?raw=true)  
図1 原画像

ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

これによってノイズを加え,画像を表示した.
その結果を図2に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai9_2.png?raw=true)  
図2 ノイズ添付画像

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

平滑化フィルタを使用することでノイズを除去できる.
その結果を図3に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai9_3.png?raw=true)  
図3 平滑化フィルタで雑音除去した画像

IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

メディアンフィルタを使用することでノイズを除去できる.
その結果を図4に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai9_4.png?raw=true)  
図4 メディアンフィルタで雑音除去した画像

f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計  
IMG = filter2(f,IMG,'same'); % フィルタの適用  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

これによってフィルタを設計しノイズを除去できる.
その結果を図5に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai9_5.png?raw=true)  
図5 設計したフィルタでノイズ除去した画像
