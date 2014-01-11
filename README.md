# Gictionary - オープンな変換辞書
Gictionaryはテキスト入力用のオープンな辞書です。
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

- 1行目には読みを記述します
- 2行目には単語のカテゴリを記述します
- 3行目にはこの単語の後に続く可能性があるカテゴリを記述します
  - 続くカテゴリが無い場合は3行目は省略します
  - 様々なカテゴリが続く可能性がある場合は複数カテゴリを空白で区切って記述します
- 「目黒」は駅名または人名の可能性があるので2個のエントリが記述されています
  - "----" のような "-" 記号の並びが区切りと解釈されます
  - 4行目以降は何を書いてもかまいません

「<a href="http://Gyazz.com/Gictionary/駅">Gictionary/駅</a>」というエントリは以下のようになっています。
  
    えき
    駅名地名接続
    地名接続

この単語のカテゴリは「駅名地名接続」であり、
「目黒」の後に「駅」が接続可能であることを示しています。
これらの辞書を使うことにより、
GyaimやSlimeでは「めぐろえき」や「m g r e k」のようなパタン文字列を「目黒駅」に変換します。



