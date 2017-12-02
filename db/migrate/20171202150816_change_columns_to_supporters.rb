class ChangeColumnsToSupporters < ActiveRecord::Migration[5.0]
  def change
    remove_column :supporters, :integer, :string
  end
end
