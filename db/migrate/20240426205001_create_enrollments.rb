class CreateEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollments do |t|
      t.string :obs
      t.integer :price_cents
      t.datetime :expiration
      t.boolean :is_active
      t.references :plan, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
