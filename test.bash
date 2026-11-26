#!/bin/bash
# SPDX-FileCopyrightText: 2026 Chikato Onodera
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目のテスト失敗
        res=1
}

res=0

### NORMAL INPUT ###
out=$(printf 'Hello 123\nabc\n' | ./text_find lines)
[ "$?" = 0 ]     || ng "$LINENO"
[ "${out}" = 2 ] || ng "$LINENO"

out=$(printf 'Hello 123\nabc\n' | ./text_find chars)
[ "$?" = 0 ]      || ng "$LINENO"
[ "${out}" = 11 ] || ng "$LINENO"

out=$(printf 'Hello 123\n' | ./text_find kinds)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "$(printf '数字\t3\n大英字\t1\n小英字\t4\nその他\t0')" ] || ng "$LINENO"

out=$(printf 'あ!\n' | ./text_find kinds)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "$(printf '数字\t0\n大英字\t0\n小英字\t0\nその他\t2')" ] || ng "$LINENO"

out=$(printf '' | ./text_find lines)
[ "$?" = 0 ]     || ng "$LINENO"
[ "${out}" = 0 ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo x | ./text_find 2> /dev/null)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo x | ./text_find unknown 2> /dev/null)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
