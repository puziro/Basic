!!
このプログラムは、PRINT と FORMAT 配列
操作の実行例です。コードの内容を確認の
うえ、プログラムを実行してみてください。

!!

! PRINT

PRINT "コンマで区切られた例"
a$ = "ABC"
b = 123
c$ = "DEF"
PRINT a$, b, c$, "GHI"

PRINT "セミコロンで区切られた例"
a1$ = "The quick "
a2$ = "brown fox "
PRINT a1$;a2$

!print "セミコロンで行が終る例"
a3$ = "jumped over "
PRINT a1$;a2$;
PRINT a3$

! FORMAT

PRINT "フォーマット例 1"
PRINT FORMAT$("%%%%%.###", 123.456)
PRINT FORMAT$("%%%%%.###", -123.456)
PRINT FORMAT$("$%%%%%.###", 123.456)
PRINT FORMAT$("$%%%%%.##", -123.456)
PRINT FORMAT$("$%%%%%", -123.456)
PRINT FORMAT$("#####.###", 123.456)
PRINT FORMAT$("#####.###", -123.456)
PRINT FORMAT$("$#####.###", 123.456)
PRINT FORMAT$("$#####.##", -123.456)
PRINT FORMAT$("$#####", -123.456)

PRINT "フォーマット例 2"
PRINT FORMAT$("$##,###,###,###", 123)
PRINT FORMAT$("$##,###,###,###", 1234)
PRINT FORMAT$("$##,###,###,###", 1234)
PRINT FORMAT$("$##,###,###,###", 1234567)
PRINT FORMAT$("$##,###,###,###", 12345678)


PRINT "フォーマット例 3"
PRINT FORMAT$("@ #/###/###/###", 1234567890)
PRINT FORMAT$("@ ###/###", -1234567890)

END

