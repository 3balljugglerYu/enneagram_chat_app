# テーブル設計
# List : プルダウンを設定する項目に"○"を記載。

## users テーブル

| Column                | Type       | Options                 | List
| --------------------- | -------    | ----------------------- | ----
| nickname              | string     | null: false             | 
| email                 | string     | null: false, default:"" |
| password              | string     | null: false, default:"" |
| first_name            | string     | null: false             | 
| last_name             | string     | null: false             | 
| birthday              | date       | null: false             | ○
| enneagram_type        | references | foreign_key: true       | 

### Association
- has_many :user_groups through => groups
- has_many :groups
- has_many :messages
- belongs_to :enneagram_type


## enneagram_types テーブル

| Column                | Type     | Options       | 
| --------------------- | -------- | ------------- | 
| type                  | string   | null: false   | 
| perfectionist_sum     | integer  |               |
| giver_sum             | integer  |               |
| achiever_sum          | integer  |               | 
| individualist_sum     | integer  |               | 
| investigator_sum      | integer  |               | 
| skeptic_sum           | integer  |               |
| enthusiast_sum        | integer  |               | 
| challenger_sum        | integer  |               | 
| peacemaker_sum        | integer  |               | 

### Association
- has_many :users

## groups テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :user_groups
- has_many :users, through: user_groups
- has_many :messages

## user_groups テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :group

## messages テーブル

| Column   | Type       | Options                        |
| -------  | ---------- | ------------------------------ |
| content  | string     |                                |
| user     | references | null: false, foreign_key: true |
| group    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :group