# GreenFingers

## デプロイURL
https://greenfingers.tokyo

## サイト概要
植物が好きな人が集まって、育て方に関する情報交換をしたり、観察日記を共有したりできる会員制サイトです。
機能の多くはログイン後に使えるようになりますが、花の広場（トピック）の閲覧のみログインなしでもご利用いただけます。
メールアドレスとお名前、パスワードで会員登録をするほか、Twitter認証でのログインもでき、お気軽にご利用いただけるよう設計しております。
日記機能にはリッチテキストエディタ(summernote)を採用、本文のフォントに色を付けたり種類を変更したりといった装飾ができます。
また、気になる日記やトピックにはコメントやスタンプでリアクションすることができます。これらは全てajax通信で行われ、素早いページ読み込みで快適にご使用いただけます。
acts_on_taggableによるタグ付け機能を搭載し、ユーザがご自身の日記に好きなタグを付けられるようにしました。
ユーザ（記事＋本文）/日記/トピックでのモデル別検索ができます。アンド検索、マイナス検索が可能です。


### サイトテーマ
植物を育てる人のための情報共有サイト


### テーマを選んだ理由
趣味で花を育てて20年以上になるものの、同じ趣味の人がネット上でつながれるサービスがないなと感じていたため。
個々でブログを持っている人は散見されますが、ブログは参入のハードルが高いと感じる人も多いかと思います。
決して数は多くないと思われますが、「園芸が好きだけれど、趣味について語り合える仲間はいない」若年層を日本全国から集めたら、それなりのコミュニティができるのではないか。
かつての私がそうであったように、花々と毎日を暮らす素晴らしい趣味を持っているのに、周囲に仲間がいないことで趣味に引け目を感じたり、孤独を抱えたりしている人達が楽しめる場所を提供したい。
そのような思いから、このサービスを始めることを決めました。ちなみに今も私には園芸仲間が一人もいません。


### ターゲットユーザ
花が好きで育てている20～30代の人（恐らく少数派です）。農家として専門的に植物に携わっている人、その他の年代の人ももちろん歓迎。


### 主な利用シーン
花の育て方に関して、誰かに意見を聞いてみたいと思った時。
同じく園芸を趣味にする仲間と、花について語りたい時。


### 主な機能
1. 日記
ご自身の育てている花を登録し、観察日記をつけることができます。
リッチテキストエディタ'summernote'を採用、自由度の高い編集画面で執筆作業ができます。

2. Twitter認証
お持ちのTwitterアカウントでログイン可能、会員登録やログインの手間がかかりません。

3. コメント
日記・トピックにコメントを送る機能です。
ajax通信で素早くやり取りできます。

4. スタンプ
日記にはスタンプでもリアクション可能。
いいね機能を拡張したものですが、5種類のアイコンから選べます。

5. フォロー・タイムライン
気になる記事を書いている人をフォローすることができます。
フォローした人たちの記事は、タイムライン画面に一覧表示されます。

6. 感情分析
書いた日記はAIにより感情スコアが算出されます。
スコアの高さによって、ユーザページの植物一覧で植物名の横に表示される表情のアイコンが変化するほか、
ポジティブな記事を書き続けると、ユーザアイコンに金・銀の枠が表示されることがあります。
また、感情スコアの高い（＝ポジティブな）ユーザほど、一覧画面や検索において上位に表示されるようになります。


## 設計書
#### WBS

https://docs.google.com/spreadsheets/d/1ziCbTtNhriS-QdUkU09QKVKJ59OmagVZga6zU1NRxgE/edit?usp=sharing

#### データベース設計書

https://docs.google.com/spreadsheets/d/1U_r6q1tOkaSSAUAXCLX3xI7_sUPpHVyk6BOIHpPP4do/edit?usp=sharing

#### アプリケーション設計書

https://docs.google.com/spreadsheets/d/1U_r6q1tOkaSSAUAXCLX3xI7_sUPpHVyk6BOIHpPP4do/edit?usp=sharing

#### ER図

https://drive.google.com/file/d/1zVgv4ABDHtPLiaZ85dHbWLfygf2_wx6t/view?usp=sharing


#### 機能一覧
https://docs.google.com/spreadsheets/d/1P-rThENpArI9mimByuh7o2GfnGNTTIZGmUM6Ge0fQ5U/edit#gid=0

