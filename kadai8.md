# 課題8レポート

標準画像「阿部寛」を原画像とする．この画像は縦414画像，横350画素による長方形のディジタルカラー画像である．

ORG = imread('http://abehiroshi.la.coocan.jp/abe-top-20190328-2.jpg'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

によって，原画像を読み込み，グレースケールで表示した結果を図1に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai8_1.png?raw=true)  
図1 原画像

IMG = ORG > 128; % 閾値128で二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

これによって閾値128で二値化し,画像を表示した.
その結果を図2に示す．  

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai8_2.png?raw=true)  
図2 濃度ヒストグラム

IMG = bwlabeln(IMG);  
imagesc(IMG); colormap(jet); colorbar; % 画像の表示

これによって二値化した画像の連結成分にラベリングを行う.
その結果を図3に示す．  

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai8_3.png?raw=true)  
図3 ディザ法で二値化した画像
