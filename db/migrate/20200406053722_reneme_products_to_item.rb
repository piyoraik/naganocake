class RenemeProductsToItem < ActiveRecord::Migration[5.2]
  def change
    rename_table :products, :items
  end
end
