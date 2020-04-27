class ChengeDataMemberStatusToEndusers < ActiveRecord::Migration[5.2]
  def change
    change_column :end_users, :member_status, :string, default: '有効'
  end
end
