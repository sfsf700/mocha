# ApplicationName
MochaBlog

# ApplicationDescription
自身の学習した内容をアウトプットするアプリ。
markdown記法による投稿ができる。(管理者のみが投稿でき、一般ユーザーは閲覧のみ)

# Development Reason
プログラミングを学習していく中で、たくさん覚えることが必要になる。
私は、１度で記憶し、その技術を上手に使用できるほど賢くはない。
それならば地道に努力を積み重ねるしかない。
そのためにアウトプット用のアプリを開発しようと考えた。
これから学習した内容はこのアプリにアウトプットし、少しづつレベルアップをはかる。
そして、誰かがこのアプリを見て、役立つことがあれば尚良いと考える。

# URL
AWS EC2によるデプロイ
http://52.192.233.63/

# Development Environment(local)
Ruby 2.6.8
Rails 6.0.0
MySQL 5.6.51

# Development Environment(public)
Ruby 2.6.8
Rails 6.0.0
MariDB
unicorn
capistrano


# users table

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

## Association
 has_many :blogs


## blogs table

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| title    | string     | null: false                    |
| genre_id | integer    | null: false                    |
| text     | text       | null: false                    |
| user     | references | null: false, foreign_key: true | 

## Association
belongs_to :user


# Ingenuity

投稿機能にMarkDown記法で投稿できるようにJavaScriptを使用した。
また、実際投稿された時にどう表示されるかわかるようにプレビュー機能をつけている。
これによって投稿前に確認することができる。

このアプリでは『Java』、『MineCraft』の学習内容についての投稿する予定。<br>
その記事が何についての記事なのか、閲覧者が視覚的にわかりやすいよう画像を表示するようにしている。