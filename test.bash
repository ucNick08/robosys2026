#!/bin/bash
# SPDX-FileCopyrightText: 2026 Chikato Onodera
# SPDX-License-Identifier: BSD-3-Clause
ng(){
	echo ${1}行目のテスト失敗
        res=1
}

res=0

out=$(seq 5 | ./plus)                  # 表の1行目: plusの出力を変数outに記録
[ "${out}" = 15 ] || ng "$LINENO"      # 期待する出力（15）でなければngを呼び出す

[ "${res}" = 0 ] && echo OK            # 通ったのが（人間に）分かるように表示
exit $res                              # 終了ステータスを返して終了（機械向け
