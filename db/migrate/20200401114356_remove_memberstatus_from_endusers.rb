class RemoveMemberstatusFromEndusers < ActiveRecord::Migration[5.2]
  def change
    remove_column :end_users, :member_status, :string
  end
end
