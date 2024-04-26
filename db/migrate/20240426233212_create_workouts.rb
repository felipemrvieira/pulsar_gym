class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.references :examination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
