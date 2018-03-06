!!

このプログラムは、配列操作の実行例です。
コードの内容を確認のうえ、プログラムを
実行してみてください。

配列は、使用する前に宣言する必要があります。 
DIM 命令はプログラムに対して、いくつの変数
（１次元、２次元、３次元、、）が必要か宣言
します。
!!
! 10個の変数配列
DIM array_1[10] 
! 10x5の変数配列、10x5x3の変数配列
DIM array_2[10, 5], array_3[10,5,3] 

! 次の例は、数字の配列に連続する数字を
! 代入して、それを印刷します。

print "例１"

dim able[2,3,4]
p = 0
for i=1 to 2
	for j=1 to 3
		for k=1 to 4
			able[i,j,k] = p
			p=p+1
		next k
	next j
next i

print "配列 able[] にロードされたデータ"

buffer$=""
for i=1 to 2
	for j=1 to 3
		for k=1 to 4
			s$ = format$("##", able[i,j,k])
			buffer$ = buffer$+ ", " + s$
		next k
		print i,j, buffer$
		buffer$=""
	next j
next i

! 次の例は、文字列の配列に、連続する文字を
! 代入して、それを印刷します。

print "例２"

dim able$[2,3,4]
p = 1
for i=1 to 2
	for j=1 to 3
		for k=1 to 4
			able$[i,j,k] = format$("##",p)
			p=p+1
		next k
	next j
next i

print "配列 able$[] にロードされたデータ"

buffer$=""
for i=1 to 2
	for j=1 to 3
		for k=1 to 4
			buffer$ = buffer$+ ", " +able$[i,j,k]
		next k
		print i,j, buffer$
		buffer$=""
	next j
next i


! Array.xxxx 命令

!  数字配列を使ったデモ

array.load x[], 3,5,6,9,1~
4,2,7,8,5,4,7,4,5,6
title$="元の並び"
gosub ShowNumbers

array.sort x[]
title$="ソート"
gosub ShowNumbers

array.reverse x[]
title$="逆に"
gosub ShowNumbers

array.shuffle x[]
title$="ランダムに"
gosub ShowNumbers

! サブルーチンを読み飛ばす

goto skip

! 数字配列の値を表示するサブルーチン

ShowNumbers:
print title$
array.length length,x[]
for i=1 to length
print x[i];", ";
next i
print ""
return

skip:

!  数字配列から、データを抽出する命令のデモ

array.sum sum, x[]
print "合計 = "; sum

array.average avg, x[]
print "平均 = "; avg

array.variance var,x[]
print "分散 = "; var

array.std_dev sd,x[]
print "標準偏差 = "; sd

array.min min, x[]
print "最小 = "; min

array.max max, x[]
print "最大 = "; max

! 文字配列のデモ

array.load z$[],"abc","def","ghi","jkl"~
"mno", "pqr", "stu", "vwx", "yz*"

print "ロードされた文字配列の内容"

array.length length,z$[]
for i=1 to length
print z$[i];" ";
next i
print ""

print "文字配列の反転"
array.reverse z$[]

array.length length,z$[]
for i=1 to length
print z$[i];" ";
next i
print ""

end
