class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.float :per_month
      t.float :ctc
      t.string :pf
      t.string :tds
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
