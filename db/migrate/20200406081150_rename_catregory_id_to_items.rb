class RenameCatregoryIdToItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :category_id, :genre_id
  end
end
