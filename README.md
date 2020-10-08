# アプリ名
写真コメント投稿アプリ

# 概要
ユーザー登録をして写真コメントを投稿できます。
また他ユーザーの投稿にコメントできます。

<!-- 
# 本番環境
http://54.95.141.25/
-->

<!-- 
# 制作背景(意図)
エクセルで各店舗、販売代行会社を管理していたため、管理しやすくする  
また販売代行会社自身で確認できる
-->

# DEMO(gifで動画や写真)
![](https://gyazo.com/22b7b5b0785ece2919d6128b1e2d48f7)

# 使用技術(開発環境)
HTML  
CSS  
Ruby  
Ruby on Rails  
GitHub  
<!-- AWS -->

<!-- 
# 課題や今後実装したい機能
PDFファイルに出力、売上以外の計上の記載
-->

# DB設計

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|int|null: false|
|tweet_id|int|null: false|
|text|text|-|
|create_at|datetime|-|
|update_at|datetime|-|

### Association
- belongs_to :tweet
- belongs_to :user

## tweeetsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|-|
|image|text|-|
|create_at|datetime|null: false|
|update_at|datetime|null: false|
|user_id|int|null: false|

### Association
- belongs_to :user
- has_many :comments   

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|verchar|-|
|encrypted_password|verchar|-|
|reset_password_token|verchar|null: false|
|reset_password_sent_at|datetime|null: false|
|remember_created_at|datetime|null: false|
|create_at|datetime|-|
|update_at|datetime|-|
|nickname|verchar|null: false|

### Association
- has_many :tweeets
- has_many :comments 