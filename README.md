# エニアグラムチャット
## 思い描く方向へ相手を誘導する
<img width="1194" alt="スクリーンショット 2020-10-18 10 51 46" src="https://user-images.githubusercontent.com/68696518/96356931-18f8e800-1130-11eb-90c4-6b00c1e05a82.png">



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

| Column                | Type     |
| --------------------- | -------- |
| type                  | string   |
| perfectionist_sum     | integer  |
| giver_sum             | integer  |
| achiever_sum          | integer  | 
| individualist_sum     | integer  | 
| investigator_sum      | integer  | 
| skeptic_sum           | integer  |
| enthusiast_sum        | integer  | 
| challenger_sum        | integer  | 
| peacemaker_sum        | integer  | 

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
