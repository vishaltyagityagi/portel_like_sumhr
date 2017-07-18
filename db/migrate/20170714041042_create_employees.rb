class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :department
      t.text :work_comment

      t.timestamps null: false
    end
  end
end
