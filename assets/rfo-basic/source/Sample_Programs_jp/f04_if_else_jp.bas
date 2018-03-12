!!
このプログラムは、if - then - else操作の
実行例です。コードの内容を確認のうえ、
プログラムを実行してみてください。
!!

! 1から13まで順に印刷します
!
PRINT "例 1"

IF 1<2 THEN PRINT 1 ELSE PRINT 1000

IF 1>2 THEN PRINT 2000 ELSE PRINT 2

IF 1 THEN
 PRINT 3
 PRINT 4
ELSE
 PRINT 3000
ENDIF
PRINT 5

!
! 注: IF の後に文が無いときは、THEN 
! が同じ行にあると解釈されます。
! THEN はあると解釈されるので記述
! 不要です。
!

IF 0
 PRINT 4000
 PRINT 4001
ELSE
 PRINT 6
ENDIF
PRINT 7

IF 1 | 0 THEN
 PRINT 8
 PRINT 9
ELSE
 PRINT 5000
 PRINT 5001
ENDIF
PRINT 10

IF 1 & 0 THEN
 PRINT 6000
 PRINT 6001
ELSE
 PRINT 11
 PRINT 12
ENDIF
PRINT 13

PRINT "例 2"

IF 1 = 1 THEN
 PRINT 1
 IF 1 = 2 THEN
  PRINT 1000
 ELSE
  PRINT 2
 ENDIF
 PRINT 3
ENDIF

IF 3 <> 3 THEN
 PRINT 2000
 IF 1 = 2 THEN
  PRINT 1000
 ELSE
  PRINT 2000
 ENDIF
 PRINT 3000
ELSE
 PRINT 4
 PRINT 5
ENDIF


IF 1 & 1
 PRINT 6
 IF 1 THEN
  PRINT 7
  IF 2 THEN
   PRINT 8
   PRINT 9
  ELSE
   PRINT 9000
  ENDIF
  PRINT 10
 ENDIF
 PRINT 11
ENDIF

! ENDIF は IF文の中にIF文を入れる場合に
! 各IF文に対応する ENDIF が必要です。

! 注：ELSEIF は最初にtrueと判断された文
! が実行されます。

! 注：THEN は省略可能です。

PRINT "例 3"

x=1
IF x=3
 PRINT 3
ELSEIF x=2 THEN
 PRINT 2
ELSEIF x=1
 PRINT 1
ELSEIF x=4 THEN
 PRINT 4
ELSEIF x=3
 PRINT 3000
ENDIF

! ESLEIF は ELSE に続いて使用されるかも
! しれませんが、ELSEIF は実行されません。

x=1
IF x=3
 PRINT 3
ELSE IF x =4
 PRINT 4
ELSE
 PRINT 2
ELSEIF x=1
 PRINT 1
ENDIF