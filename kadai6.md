# 課題6レポート

標準画像「阿部寛」を原画像とする．この画像は縦414画像，横350画素による長方形のディジタルカラー画像である．

ORG=imread('http://abehiroshi.la.coocan.jp/abe-top-20190328-2.jpg'); % 原画像の入力  
ORG = rgb2gray(ORG);  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

によって，原画像を読み込み，グレースケールで表示した結果を図１に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai6_1.png?raw=true)  
図1 原画像

IMG = ORG>128; % 128による二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

これによって閾値を128として二値化した画像を生成した.
その結果を図2に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai6_2.png?raw=true)  
図2 閾値128で二値化した画像

IMG = dither(ORG); % ディザ法による二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

これによってディザ法で二値化した画像を生成した.
その結果を図3に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai6_3.png?raw=true)  
図3 ディザ法で二値化した画像
