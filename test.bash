#!/bin/bash
# SPDX-FileCopyrightText: 2026 Chikato Onodera
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目のテスト失敗
        res=1
}

res=0

### NORMAL INPUT ###
out=$(printf 'こんにちは世界\nABC123\n' | ./textstat lines)#将来敵的に行う予定
[ "$?" = 0 ]    || ng "$LINENO"
[ "${out}" = 2 ] || ng "$LINENO"

out=$(printf 'こんにちは世界\nABC123\n' | ./textstat chars)
[ "$?" = 0 ]     || ng "$LINENO"
[ "${out}" = 13 ] || ng "$LINENO"

out=$(printf 'こんにちは世界\nABC123\n' | ./textstat kinds)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "$(printf 'ひらがな\t5\nカタカナ\t0\n漢字\t2\n英字\t3\n数字\t3\nその他\t0')" ] || ng "$LINENO"

out=$(printf 'aab\n' | ./textstat freq 1)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "$(printf 'a\t2')" ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo x | ./textstat 2> /dev/null)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo x | ./textstat unknown 2> /dev/null)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo x | ./textstat freq abc 2> /dev/null)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
