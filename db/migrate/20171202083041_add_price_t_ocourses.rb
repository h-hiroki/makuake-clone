class AddPriceTOcourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :price, :integer
    add_column :courses, :image, :text
    add_column :courses, :stock, :integer
  end
end
