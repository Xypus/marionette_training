class SanitizeDatabaseFields < ActiveRecord::Migration
  def change
    remove_column :foods, :meal_id
    remove_column :workouts, :user_id
    remove_column :exercises, :workout_id
    remove_column :executions, :exercise_id
    drop_table :executions
    drop_table :exercises
    drop_table :meals
    drop_table :workouts
  end
end
