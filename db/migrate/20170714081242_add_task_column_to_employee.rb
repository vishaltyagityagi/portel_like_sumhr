class AddTaskColumnToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :task, :string
  end
end
