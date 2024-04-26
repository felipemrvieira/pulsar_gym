class CreateMeasures < ActiveRecord::Migration[7.0]
  def change
    create_table :measures do |t|
      t.string :body_part
      t.integer :value
      t.references :examination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
