class DropTableFoods < ActiveRecord::Migration
  def change
    drop_table :foods
  end
end
