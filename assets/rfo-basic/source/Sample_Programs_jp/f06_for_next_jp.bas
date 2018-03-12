!!
このプログラムは、For - Next 操作の実行例
です。コードの内容を確認のうえ、プログラム
を実行してみてください。
!!

PRINT "例 1"
FOR i = 1 TO 3 STEP 1
 PRINT i
NEXT i
PRINT i * 10

! 上の例は 1, 2, 3, 40 が印刷されます

PRINT "例 2"
FOR j = 1 TO 3
 PRINT j
NEXT j
PRINT j*10

! 上の例も 1, 2, 3, 40 が印刷されます
!
! STEP が指定されていない場合は STEP は 1
! と解釈されます。

PRINT "例 3"
start = 1
stop = 4
FOR index = start TO stop STEP 2
 PRINT index
NEXT index
PRINT index*10

! 上の例は 1, 3, 50 が印刷されます
!
! loop は index（制御変数）が Stop より大
! きくなるまで繰り返します
!
! もし  STEP の値がマイナスの場合は index
! が Stop より小さくなるまで繰り返します

PRINT "例 4"
start = 3
stop = 1
FOR index = start TO stop STEP -2
 PRINT index
NEXT index
PRINT index*10

! 上の例は 3, 1, -10 が印刷されます
!
! FOR ループはいくらでもネスト（入れ子）可能です
!
PRINT "例 5"
FOR i = 1 TO 2
 FOR j = 1 TO 2
  FOR k = 1 TO 2
   PRINT i, j, k
  NEXT k
 NEXT j
NEXT k

! NEXT の次の制御変数名は、必要ありません
! （チェックされません）ネスティングした時
! に分かりやすくするために、使用して下さい
!
! 変数名には、制限があります
!
! FOR <var> = <exp1> TO <exp2> STEP <exp3>
!
! 上の <exp1> 変数名に TO が含まれないように
! してください
!
! 上の <exp2> 変数名に STEP が含まれないよう
! にしてください
!
! もし含まれていると予想外の結果になります

bottom = 2
top = 3
FOR index = botTOm TO top STEP 2
 PRINT index
NEXT

! 上の制限キーワードをエスケープするために、
! かっこ()を使うことができます

bottom = 2
top = 3
FOR index = (bottom) TO top STEP 2
 PRINT index
NEXT
