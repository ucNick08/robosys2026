# text_find

## 著作権とLICENSE
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- このパッケージのコードは、下記のスライド（CC BY-SA 4.0 by Taro Suzuki）のものを、
  本人の許可を得て自身の著作としたものです。
    - https://github.com/tarolab-cit/lectures/tree/main/robosys2026
- © 2026 Taro Suzuki

# text_find
![test](https://github.com/ucNick08/robosys2026/actions/workflows/test.yml/badge.svg)

（1〜2文で、何をするコマンドかを書く）

## インストール
```
$ git clone https://github.com/ucNick08/robosys2026.git
$ cd robosys2026
$ chmod +x text_find
```

## 使い方
標準入力に調べたいテキストを渡し、引数で調べる内容を指定します。

（引数が3種類あることと、それぞれ何を出すかを、箇条書きで書く）

```
$ printf 'Hello 123\n' | ./text_find kinds
数字	3
大英字	1
小英字	4
その他	0
```

（ファイルを渡す例を、実際に実行して、その出力を貼る）

```
$ ./text_find lines < sample.text
```

## 動作環境
- OS: Ubuntu 24.04 LTS
- Python: 3.10〜3.14（テスト済み）

## テスト
（テストの実行方法を、1〜2行で書く）

## ライセンス
- 3条項BSDライセンスの下で、再頒布および使用が許可されます。
- © 2026 Chikato Onodera

## 自由記述
このリポジトリはロボットシステム学で使用するリポジトリです
