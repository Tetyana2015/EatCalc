class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :user_id
      t.string :name

      t.timestamps null: false
    end
  end
end
