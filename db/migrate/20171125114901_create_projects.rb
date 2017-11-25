class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer       :planner_id
      t.integer       :target_fig
      t.timestamp     :end_time
      t.string        :title, null: false
      t.text          :image
      t.text          :body
      t.timestamps    null: false
      t.timestamps
    end
  end
end
