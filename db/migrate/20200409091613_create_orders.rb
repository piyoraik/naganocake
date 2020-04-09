class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :end_user_id
      t.string :payment
      t.string :status
      t.integer :postage
      t.integer :amount
      t.string :address
      t.string :postcode
      t.string :destination
      t.timestamps
    end
  end
end
