class AddAttributesToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :calories, :integer
    add_column :meals, :proteins, :float
    add_column :meals, :carbs, :float
    add_column :meals, :fats, :float
  end
end
