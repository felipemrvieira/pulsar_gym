class CreateExerciseCompletitions < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_completitions do |t|
      t.string :load
      t.references :checkin, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
