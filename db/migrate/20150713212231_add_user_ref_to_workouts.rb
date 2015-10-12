class AddUserRefToWorkouts < ActiveRecord::Migration
  def change
    add_reference :workouts, :user, index: true, foreign_key: true
  end
end
