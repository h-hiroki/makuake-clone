class ChangeColumnToProject < ActiveRecord::Migration[5.0]
  def change
    change_column :projects, :end_time, :date
  end
end
