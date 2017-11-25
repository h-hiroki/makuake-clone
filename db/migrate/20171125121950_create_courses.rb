class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer     :project_id, null: false
      t.string      :name
      t.text        :body
      t.timestamp   :delivery
      t.timestamps  null: false
    end
  end
end
