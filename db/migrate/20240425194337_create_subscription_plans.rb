class CreateSubscriptionPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :subscription_plans do |t|
      t.string :name
      t.integer :price_cents, default: 0, null: false
      t.datetime :expiration
      t.references :super_admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
