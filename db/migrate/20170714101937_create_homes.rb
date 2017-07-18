class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
