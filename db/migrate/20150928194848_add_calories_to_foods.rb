class AddCaloriesToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :calories, :integer
  end
end
