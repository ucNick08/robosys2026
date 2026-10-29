#!/bin/bash

ng(){
	echo ${1}行目のテスト失敗
        res=1
}

res=0
a=鈴木
[ "$a" = 鈴本 ] || ng "$LINENO"
[ "$a" = 鈴木 ] || ng "$LINENO"

exit $res
