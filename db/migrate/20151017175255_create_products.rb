class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :carbs
      t.integer :proteins
      t.integer :fats
      t.integer :calories

      t.timestamps null: false
    end
  end
end
