class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.float :proteins
      t.float :carbs
      t.float :fats
      t.belongs_to :meal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
