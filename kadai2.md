# 課題2レポート

標準画像「阿部寛」を原画像とする．この画像は縦414画像，横350画素による長方形のディジタルカラー画像である．

ORG=imread('http://abehiroshi.la.coocan.jp/abe-top-20190328-2.jpg'); % 原画像の入力  
ORG = rgb2gray(ORG); colormap(gray); colorbar;  
imagesc(ORG); axis image; % 画像の表示

によって，原画像を読み込み，グレースケールで表示した結果を図１に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai2_1.png?raw=true)  
図1 原画像

IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;

これによって128以下と129以上にの2階調に画像を生成した.
その結果を図2に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai2_2.png?raw=true)  
図2 2階調

IMG0 = ORG>64;  
IMG1 = ORG>128;  
IMG2 = ORG>192;  
IMG = IMG0 + IMG1 + IMG2;  
imagesc(IMG); colormap(gray); colorbar;  axis image;  

これによって〜64,65〜128,129〜192,192〜255の4階調に画像を生成した.
その結果を図3に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai2_3.png?raw=true)  
図3 4階調

IMG0 = ORG>32;  
IMG1 = ORG>64;  
IMG2 = ORG>96;  
IMG3 = ORG>128;  
IMG4 = ORG>160;  
IMG5 = ORG>192;  
IMG6 = ORG>224;  
IMG = IMG0 + IMG1 + IMG2;  
imagesc(IMG); colormap(gray); colorbar;  axis image;  

これによって32,64,96,128,160,192,224で区切り8階調に画像を生成した.
その結果を図4に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai2_4.png?raw=true)  
図4 8階調
