# 実装機能

- ユーザー管理機能
- プロジェクト投稿機能(admin)
- プロジェクト支援機能

# DB構造

### users table
| Column     | Type       | Options     | Memo |
| :--------- | :--------- | :---------- | :--- |
| id         | integer    | null: false, unique: true | |
| e-mail     | string     | null: false, unique: true | |
| password   | string     | null: false | |
| name       | string     | null: false | ユーザー名 |
| image      | text       | null: false | |
| location   | text       |             | |
| birthday   | text       |             | |
| gender     | text       |             | ||
*※deviseにて生成*


### projects table
| Column     | Type       | Options     | Memo |
| :--------- | :--------- | :---------- | :--- |
| id         | integer    | null: false, unique: true | |
| planner_id | integer    |             | プロジェクト実行者ID |
| target_fig | integer    |             | 目標金額 |
| end_time   | timestamp  |             | 締切時間 |
| category_id | integer   |             | カテゴリーID |
| location_id | integer   |             | 場所ID |
| title      | string     | null: false | プロジェクトのタイトル |
| image      | text       |             | プロジェクトのメイン画像 |
| body       | text       |             | プロジェクト詳細内容 |

##### Association
- has_many :planners
- has_many :courses
- has_many :supporters
- has_many :tags


### planner table
| Column     | Type       | Options     | Memo |
| :--------- | :--------- | :---------- | :--- |
| id         | integer    | null: false, unique: true | |
| name       | string     |             |      |
| location_id | text      |             |      |
| birthday   | timestamp  |             |      |
| introduction | text     |             |      |
| email      | string     | null: false |      ||

##### Association
- has_many :projects
- has_many :locations

### course table
| Column     | Type       | Options     | Memo |
| :--------- | :--------- | :---------- | :--- |
| id         | integer    | null: false, unique: true | |
| project_id | integer    | null: false | |
| name       | string     | null: false | コース名 |
| body       | text       |             | コース内容説明 |
| delivery   | timestamp  |             | お届け予定時期 |

### supporter table
| Column     | Type       | Options     | Memo |
| :--------- | :--------- | :---------- | :--- |
| id         | integer    | null: false, unique: true | |
| project_id | integer    | null: false | |
| course_id  | integer    | null: false | |
| user_id    | integer    | null: false | ||

### tag table
| Column     | Type       | Options     | Memo |
| :--------- | :--------- | :---------- | :--- |
| id         | integer    | null: false, unique: true | |
| project_id | string     | null: false | |


### category_master table
| Column     | Type       | Options     | Memo |
| :--------- | :--------- | :---------- | :--- |
| id         | integer    | null: false, unique: true | |
| name       | string     | null: false | カテゴリー名 |


### location_master table
| Column     | Type       | Options     | Memo |
| :--------- | :--------- | :---------- | :--- |
| id         | integer    | null: false, unique: true | |
| name       | string     | null: false | 場所名 |

### tag_master table
| Column     | Type       | Options     | Memo |
| :--------- | :--------- | :---------- | :--- |
| id         | integer    | null: false, unique: true | |
| name       | string     | null: false | タグ名 |
