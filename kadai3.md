# 課題3レポート

標準画像「阿部寛」を原画像とする．この画像は縦414画像，横350画素による長方形のディジタルカラー画像である．

ORG=imread('http://abehiroshi.la.coocan.jp/abe-top-20190328-2.jpg'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

によって，原画像を読み込み，グレースケールで表示した結果を図１に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai3_1.png?raw=true)  
図1 原画像

IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換  
imagesc(IMG); colormap(gray); colorbar;

これによって閾値を64として処理した画像を生成した.
その結果を図2に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai3_2.png?raw=true)  
図2 閾値64

IMG = ORG > 96;  
imagesc(IMG); colormap(gray); colorbar;

これによって閾値を96として処理した画像を生成した.
その結果を図3に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai3_3.png?raw=true)  
図3 閾値96

IMG = ORG > 128;  
imagesc(IMG); colormap(gray); colorbar;

これによって閾値を128として処理した画像を生成した.
その結果を図4に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai3_4.png?raw=true)  
図4 閾値128

IMG = ORG > 192;  
imagesc(IMG); colormap(gray); colorbar;

これによって閾値を192として処理した画像を生成した.
その結果を図5に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai3_5.png?raw=true)  
図5 閾値192
