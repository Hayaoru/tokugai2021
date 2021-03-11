URL:https://toku-1992.herokuapp.com/
READ ME
## アプリ名：得買い
##概要
物などをお得に購入する方法を集める口コミサイトです。
このサイトを見れば一番お得に買い物ができるかわかることを目的として作成しています。
お得な情報の投稿、編集、削除及びユーザー登録ができます。
id:admin
password:1429

## 制作背景
昨今ネット上で商品を購入するのに広告や動画で色々な情報があふれており本当にお得なのか、一番お得なのはどれなのかわかりづらくなっていると思います。
そこで一つのサイトとしてまとめて比較までできるようにすればいいのではないかと考えました。
また投稿した情報が閲覧されることでポイント付与することで投稿するメリットを付けることができれば情報がより集まると考えております。

## DEMO
ホームイメージ
https://gyazo.com/817b3cf2cc1996af6871b2998ca0fda9
投稿内容イメージ
https://gyazo.com/550679dcf3e512c9bf2e62eeeb76287a

## 実装予定
キーワード検索機能、カテゴリ検索機能、お気に入り機能、いいね機能
Docker環境、AWS EC2導入

# テーブル設計
## users テーブル
| Column             | Type   | Options   |
| ------------------ | ------ | --------- |
| nickname           | string | not null  |
| encrypted_password | string | not null  |
| email              | string | not null  |
### Association
- has_many :infomaitons
### infomation テーブル
| Column        | Type       | Options            |
| ------------- | ---------- | ------------------ |
| title         | string     | not null           |
| main          | text       | not null           |
| category_id   | integer    | not null           |
| url           | text       | not null           |
| user          | references | foreign_key: true  |
### Association
- belongs_to :user
- has_one_attached   :image
