class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.text :description
      t.integer :tax
      t.string :image_id
      t.string :deleted_at
      t.string :datatime
      t.timestamps
    end
  end
end
