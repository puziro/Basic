!!
このプログラムは、GotoとGosub操作の実行例
です。コードの内容を確認のうえ、プログラムを
実行してみてください。
!!

! GoTo の例

PRINT "GoTo 例"

PRINT 1
GOTO skip
PRINT 1000
skip:
PRINT 2

! 印刷 1, 2

! GOSUB の例

PRINT "GoSub 例"

PRINT 1
GOSUB subroutine
PRINT 4
PRINT 5
GOTO done
subroutine:
PRINT 2
PRINT 3
RETURN
DOne:
 PRINT "完了"

 ! 印刷 1, 2, 3, 4, 5, 完了




