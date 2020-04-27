class RenemeCategoriesToGenre < ActiveRecord::Migration[5.2]
  def change
    rename_table :categories, :genres
  end
end
