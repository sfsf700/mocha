# Mocha


# users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

## Association
 has_many :blogs


## blogs テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| title    | string     | null: false                    |
| genre_id | integer    | null: false                    |
| text     | text       | null: false                    |
| user     | references | null: false, foreign_key: true | 

## Association
belongs_to :user