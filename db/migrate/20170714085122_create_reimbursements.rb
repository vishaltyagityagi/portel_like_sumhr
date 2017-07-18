class CreateReimbursements < ActiveRecord::Migration
  def change
    create_table :reimbursements do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
