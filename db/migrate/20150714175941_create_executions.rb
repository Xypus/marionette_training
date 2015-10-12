class CreateExecutions < ActiveRecord::Migration
  def change
    create_table :executions do |t|
      t.float :weight
      t.integer :reps
      t.references :exercise, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
