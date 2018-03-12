!!
このプログラムで、BASIC!のマニュアル
『De Re BASIC!』をダウンロードできます。

マニュアルは PDF ファイルです。
グーグルプレイにある、PDFリーダーアプリ
で読むことができます。

多くのアンドロイド端末には、標準でPDF
リーダーアプリが導入されています。
このプログラムは、ダウンロード後、
マニュアルを開こうとします。

マニュアルは、以下の名前でダウンロード
されます。
"/sdcard/rfo-basic/data/De_Re_BASIC!.pdf"

ファイルサイズが大きいので、無線LAN環境
でダウンロードしてください。
!!

file$ = "De_Re_BASIC!.pdf"
BYTE.OPEN r, fn, "http://dl.bintray.com/rfo-basic/android/v" + version$() + "/" + file$
POPUP "Be patient. Wait for 'Download Done' Message", 0, 0, 1
BYTE.COPY fn, file$
PRINT "Download Done."
PRINT "Opening the manual in your PDF reader."
BROWSE "file:///sdcard/rfo-basic/data/" + file$
END
