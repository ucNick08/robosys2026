#!/bin/bash
# SPDX-FileCopyrightText: 2026 Chikato Onodera
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目のテスト失敗
        res=1
}

res=0

### NORMAL INPUT ###
out=$(printf '2026-11-24T10:00:00 vi\n2026-11-24T10:00:05 vi\n2026-11-24T10:00:10 idle\n2026-11-24T10:00:25 vi\n' | ./manage)
[ "$?" = 0 ]                                 || ng "$LINENO"
[ "${out}" = "$(printf 'idle\t15\nvi\t10')" ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo abc | ./manage 2> /dev/null)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./manage 2> /dev/null)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
