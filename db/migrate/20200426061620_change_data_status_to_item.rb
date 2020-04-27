class ChangeDataStatusToItem < ActiveRecord::Migration[5.2]
  def change
    change_column :order_details, :status, :integer, default: 0
    change_column :orders, :status, :integer, default: 0
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
