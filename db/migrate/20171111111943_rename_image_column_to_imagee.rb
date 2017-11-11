class RenameImageColumnToImagee < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :Image, :image
  end
end
