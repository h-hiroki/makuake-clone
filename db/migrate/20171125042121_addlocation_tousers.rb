class AddlocationTousers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :location, :string
    add_column :users, :birthday, :string
    add_column :users, :gender, :string
  end
end
