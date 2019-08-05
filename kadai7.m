% 課題7　ダイナミックレンジの拡大
% 画素のダイナミックレンジを０から２５５にせよ． 
% 下記はサンプルプログラムである． 
% 課題作成にあたっては「Lenna」以外の画像を用いよ． 
% 例

ORG = imread('http://abehiroshi.la.coocan.jp/abe-top-20190328-2.jpg'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;
imhist(ORG); % 濃度ヒストグラムを生成、表示
pause;
ORG = double(ORG);
mn = min(ORG(:)); % 濃度値の最小値を算出
mx = max(ORG(:)); % 濃度値の最大値を算出
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;
ORG = uint8(ORG); % この行について考察せよ
% MATLABでは、数値変数は既定で倍精度の浮動小数点数として格納される
% uint8()関数は8ビットの符号なし整数へ変換する関数なので、この19行目でORGは64ビットから8ビットに変換されている
% こうすることで画像のデータ量が少なくなり、またヒストグラムの生成が可能になっている
imhist(ORG); % 濃度ヒストグラムを生成、表示
