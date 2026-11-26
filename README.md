# text_find

## text_find
![test](https://github.com/ucNick08/robosys2026/actions/workflows/test.yml/badge.svg)

text_findは、引き渡した文章もしくはテキストファイルの統計を調べることができるプログラムです。
何の統計を調べたいかはユーザー側が指定できます。
現在は英語ファイル・文章のみの対応をしていますが、将来的に日本語・中国語・韓国語・ラテン語・ドイツ語の対応をする予定です。

## インストール
~~~
$ git clone https://github.com/ucNick08/robosys2026.git
$ cd robosys2026
$ chmod +x text_find
~~~
サンプルを入れたい場合はtext_findと同じリポジトリ内に配置すること。
## 使い方
標準入力に調べたいテキストを渡し、引数で調べる内容を指定します。

引数は三種類。
行数統計：lins
~~~
$ printf 'Hello 123\n' | ./text_find lines
1
~~~
全体の文字数統計：chars
~~~
$ printf 'Hello 123\n' | ./text_find chars
8
~~~
文字のおおまかな種類統計：kinds

~~~
$ printf 'Hello 123\n' | ./text_find kinds
数字	3
大英字	1
小英字	4
その他	0
~~~

ファイルに渡す場合

~~~
./text_find kinds < sample.text
数字    0
大英字  97
小英字  4547
その他  155
~~~

## 動作環境
- OS: Ubuntu 24.04 LTS
- Python: 3.10〜3.14（テスト済み）

## テスト
（テストの実行方法を、1〜2行で書く）

## 著作権とLICENSE
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- このパッケージのコードは、下記のスライド（CC BY-SA 4.0 by Taro Suzuki）のものを、
  本人の許可を得て自身の著作としたものです。
    - https://github.com/tarolab-cit/lectures/tree/main/robosys2026
- © 2026 Taro Suzuki


