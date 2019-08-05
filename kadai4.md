# 課題4レポート

標準画像「阿部寛」を原画像とする．この画像は縦414画像，横350画素による長方形のディジタルカラー画像である．

ORG=imread('http://abehiroshi.la.coocan.jp/abe-top-20190328-2.jpg'); % 原画像の入力  
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar;

によって，原画像を読み込み，グレースケールで表示した結果を図１に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai4_1.png?raw=true)  
図1 原画像

imhist(ORG); % ヒストグラムの表示

これによってヒストグラムを表示した.
その結果を図2に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai4_2.png?raw=true)  
図2 ヒストグラム
