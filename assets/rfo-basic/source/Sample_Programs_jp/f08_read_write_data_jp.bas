!!
このプログラムは、ファイル入出力操作の実行
例です。コードの内容を確認のうえ、プログラム
を実行してみてください。
!!
PRINT "******** テキストファイル読み書き例"

TEXT.OPEN W, FN1, "testfile.txt"
TEXT.WRITELN FN1, "Test line 1"
TEXT.WRITELN FN1, "Test line 2"
TEXT.CLOSE FN1

TEXT.OPEN R, FN2, "testfile.txt"
DO
 TEXT.READLN FN2, a_line$
 PRINT a_line$
UNTIL a_line$ = "EOF"
TEXT.CLOSE FN2


! バイナリーファイル入出力

PRINT "******** Byte.copy の例"
BYTE.OPEN R, rf, "Cartman.png"
BYTE.COPY rf, "Cartman2.png"
BYTE.CLOSE rf

PRINT "******** Cartman2ファイルの存在確認"
FILE.EXISTS b, "Cartman2.png"
IF b THEN PRINT "あります" ELSE PRINT "ありません"

PRINT "******** ファイルの大きさ"
FILE.SIZE s1, "Cartman.png"
FILE.SIZE s2, "Cartman2.png"
PRINT s1, s2


! MKDIR と DIR の例
!!
日本語版のみの補足
DIR(ディレクトリー)とは、ウィンドウズでいう
フォルダーのことです。
MKDIR はフォルダーの作成。
DIR はフォルダー内のファイル一覧表示。
ウインドウズのコマンドプロンプトを使用する
とWin7,8,10 でも同じことができます。

PRINT "******** MKDIR と DIR の例"

PRINT "mkdir \"newdir\""
FILE.MKDIR "newdir"
FILE.DIR "", dir$[]
ARRAY.LENGTH length, dir$[]

FOR index = 1 TO length
 PRINT dir$[index]
NEXT index

! RENAME

PRINT "******** 名前変更の例"
PRINT "rename \"newdir\", \"olddir\""
FILE.RENAME "newdir", "olddir"
FILE.DIR "", dir2$[]
ARRAY.LENGTH length, dir2$[]

FOR index = 1 TO length
 PRINT dir2$[index]
NEXT index

PRINT "******** ルートからの表示例"
FILE.ROOT r$
PRINT r$

END

