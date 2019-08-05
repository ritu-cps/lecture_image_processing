# 課題10レポート

標準画像「阿部寛」を原画像とする．この画像は縦414画像，横350画素による長方形のディジタルカラー画像である．

ORG = imread('http://abehiroshi.la.coocan.jp/abe-top-20190328-2.jpg'); % 原画像の入力  
ORG = rgb2gray(ORG); %カラーからグレイへの変換  
imagesc(ORG); colormap('gray'); colorbar;% 画像表示

によって，原画像を読み込み，グレースケールで表示した結果を図1に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai10_1.png?raw=true)  
図1 原画像

IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示

これによってプレウィット法でエッジ抽出し,画像を表示した.
その結果を図2に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai10_2.png?raw=true)  
図2 プレウィット法でエッジ抽出した画像

IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示

これによってソベル法でエッジ抽出し,画像を表示した.
その結果を図3に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai10_3.png?raw=true)  
図3 ソベル法でエッジ抽出した画像

IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示

これによってキャニー法でエッジ抽出し,画像を表示した.
その結果を図4に示す．

![原画像](https://github.com/ritu-cps/lecture_image_processing/blob/master/image/kadai10_4.png?raw=true)  
図4 キャニー法でエッジ抽出した画像
