class CreateExaminations < ActiveRecord::Migration[7.0]
  def change
    create_table :examinations do |t|
      t.datetime :expiration
      t.references :instructor, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
