# Gictionary - オープンな変換辞書
Gictionaryはテキスト入力のオープンな用辞書です。
<a href="http://Gyazz.com/Gictionary">Gyazz.com/Gictionary</a>
上のデータを本サイトのプログラムで
<a href="http://GitHub.com/Gyaim">Gyaim</a>、
<a href="http://GitHub.com/Slime">Slime</a>
用の辞書に変換します。

(GyaimはMac用のIME, SlimeはAndroid用のIMEです)

## 辞書の構造

例えば「<a href="http://Gyazz.com/Gictionary/目黒">Gictionary/目黒</a>」というエントリには以下のようなテキストが入っています。

    めぐろ
    山手線駅名
    駅名地名接続
    ---
    めぐろ
    名前
    名前接続

- 1行目は読みです
- 2行目はカテゴリを示す文字列です
- 3行目はこの単語の後に続く可能性があるカテゴリです
  -  続くカテゴリが無い場合は省略可能です
- 「目黒」は駅名または人名の可能性があるので2個のエントリが記述されています
  - 区切りが明らかであればエントリの区切りは何でもかまいません

「<a href="http://Gyazz.com/Gictionary/駅">Gictionary/駅</a>」というエントリは以下のようになっています。
  
    えき
    駅名地名接続
    地名接続

この単語のカテゴリは「駅名地名接続」であり、
「目黒」の後に「駅」が接続可能であることを示しています。
これらの辞書を使うと「めぐろえき」や「m g r e k」のようなパタン文字列を「目黒駅」に変換可能になります。



