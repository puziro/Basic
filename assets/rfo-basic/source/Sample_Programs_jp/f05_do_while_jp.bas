!!
このプログラムは、DO - UNTIL、WHILE - 
REPEAT 操作の実行例です。コードの内容を
確認のうえ、プログラムを実行してみてください。
!!

! DO - UNTIL 例

! 次の例は 1, 2, 3 を印刷します

PRINT "Do の例"
index = 1
limit = 3
DO
 PRINT index
 index = index + 1
UNTIL index = limit
PRINT index

! 次の例は、 4, 5, 6, 7 を印刷します

PRINT "While の例"
index = 4
limit = 6
WHILE index <= limit
 PRINT index
 index = index + 1
REPEAT
PRINT index

! 両 loop はいくらでもネスト（入れ子）可能です
!
! 次の例は、以下を印刷します
! 1, 1, 1
! 1, 1, 2
! 1, 2, 1
! 1, 2, 2
! 2, 1, 1
! 2, 1, 2
! 2, 2, 1
! 2, 2, 2
! 30, 30, 30
!
PRINT "ネストした DO と WHILE の例"

index_1 = 1
limit_1 = 3
DO
 index_2 = 1
 limit_2 = 3
 WHILE index_2 < limit_2
  index_3 = 1
  limit_3 = 3
  WHILE index_3 < limit_3
   PRINT index_1, index_2, index_3
   index_3 = index_3 + 1
  REPEAT
  index_2 = index_2 + 1
 REPEAT
 index_1 = index_1 + 1
UNTIL index_1 = limit_1
PRINT index_1*10, index_2*10, index_3*10

END
