# 課題7レポート

標準画像「阿部寛」を原画像とする．この画像は縦414画像，横350画素による長方形のディジタルカラー画像である．

ORG = imread('http://abehiroshi.la.coocan.jp/abe-top-20190328-2.jpg'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  
imhist(ORG); % 濃度ヒストグラムを生成、表示

によって，原画像を読み込み，グレースケールで表示した結果と濃度ヒストグラムをそれぞれ図1,図2に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai7_1.png?raw=true)  
図1 原画像

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai7_2.png?raw=true)  
図2 濃度ヒストグラム

ORG = double(ORG);  
mn = min(ORG(:)); % 濃度値の最小値を算出  
mx = max(ORG(:)); % 濃度値の最大値を算出  
ORG = (ORG-mn)/(mx-mn)*255;  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  
ORG = uint8(ORG); % この行について考察せよ  
imhist(ORG); % 濃度ヒストグラムを生成、表示

これによって画素のダイナミックレンジを０から２５５に拡大でき,その結果と濃度ヒストグラムをそれぞれ図3,図4に示す．  

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai7_3.png?raw=true)  
図3 ダイナミックレンジを０から２５５に拡大した画像

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai7_4.png?raw=true)  
図4 濃度ヒストグラム

#### ORG = uint8(ORG);の考察
```
MATLABでは,数値変数は既定で倍精度の浮動小数点数として格納される.  
uint8()関数は8ビットの符号なし整数へ変換する関数なので,この19行目でORGは64ビットから8ビットに変換されている.  
こうすることで画像のデータ量が少なくなり,またヒストグラムの生成が可能になっている.
```
