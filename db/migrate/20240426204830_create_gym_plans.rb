class CreateGymPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :gym_plans do |t|
      t.string :name
      t.integer :price_cents
      t.datetime :expiration
      t.boolean :is_active
      t.references :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
