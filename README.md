# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| nickname           | string | null: false               |
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| first_name_kana    | string | null: false               |
| last_name_kana     | string | null: false               |
| birthday           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | date   | null: false               |

### Associations

- has_many diaries


## diaries テーブル

| Column | Type       | Options                        |
|--------|------------|--------------------------------|
| date   | date       | null: false                    |
| site   | string     | null: false                    |
| user   | references | null: false, foreign_key: true |

### Associations

- belongs_to user
- has_many workouts


## workouts テーブル

| Column | Type       | Options                        |
|--------|------------|--------------------------------|
| menu   | string     |                                |
| weight | string     |                                |
| rep    | string     |                                |
| set    | integer    | null: false                    |
| diary  | references | null: false, foreign_key: true |

### Associations

- belongs_to diary
