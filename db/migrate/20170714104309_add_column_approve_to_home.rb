class AddColumnApproveToHome < ActiveRecord::Migration
  def change
    add_column :homes, :approve, :boolean, default: false
    add_column :homes, :cancel, :boolean, default: false
  end
end
