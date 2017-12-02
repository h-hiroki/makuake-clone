class CreateSupporters < ActiveRecord::Migration[5.0]
  def change
    create_table :supporters do |t|
      t.references  :user, null: false, foreign_key: true
      t.references  :course, null: false, foreign_key: true
      t.string :name,     null: false
      t.string :gender,   null: false
      t.date :birthday,   null: false
      t.string :mobile,   null: false
      t.string :postal_code, :integer, null: false
      t.string :region,   null: false
      t.string :city,     null: false
      t.string :block,    null: false
      t.string :building
      t.timestamps null: false
    end
  end
end
