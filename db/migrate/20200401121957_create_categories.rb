class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :deleted_at
      t.string :datatime
      t.timestamps
    end
  end
end
