class CreateNeighbors < ActiveRecord::Migration[7.0]
  def change
    create_table :neighbors do |t|
      t.string :name
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
