# chat-space DB設計

## users_table
|Column|Type|Options|
|------|----|-------|
|id----|integer|----|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false, index: true|
### Association
  has_many :messages
  has_many :users_groups
  has_many :groups, through: :user_groups

## groups_table
|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
### Association
  has_many :messages
  has_many :users_groups
  has_many :groups, through: :user_groups

## messages_table
|Column|Type|Options|
|------|----|-------|
|text|text|---------|
|date|datetime|-----|
|image|string|------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
### Association
  belongs_to :group
  belongs_to :user

## users_groups_table(中間テーブル)
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false,foreign_key: true|
### Associations
  belongs_to :group
  belongs_to :user