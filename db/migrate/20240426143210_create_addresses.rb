class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.string :building_number
      t.string :complement
      t.references :neighbor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
