class CreateCheckins < ActiveRecord::Migration[7.0]
  def change
    create_table :checkins do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
