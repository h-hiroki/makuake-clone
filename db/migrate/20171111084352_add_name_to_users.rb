class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :Name, :string
  end
end
