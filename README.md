# chat-space DB設計

## users_table
|Column|Type|Options|
|------|----|-------|
|id----|integer|----|
|email|string|------|
|password|string|---|
|name|string|null: false, index: true|
### Association
  has_many :messages
  has_many :users_groups_table
  has_many :groups, through: :user_groups

## groups_table
|Column|Type|Options|
|------|----|-------|
|name|text|---|
### Association
  has_many :messages
  has_many :users_groups_table
  has_many :groups, through: :user_groups

## messages_table
|Column|Type|Options|
|------|----|-------|
|text|text|---------|
|date|datetime|-----|
|image|string|------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
  belongs_to :group
  belongs_to :user

## users_groups_table(中間テーブル)
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false,foreign_key: true|
### Associations
  belongs_to :group
  belongs_to :user