class ChangeprojectidTocourse < ActiveRecord::Migration[5.0]
  def change
    remove_column  :courses, :project_id, :integer
    add_reference  :courses, :project, foreign_key: true
  end
end
