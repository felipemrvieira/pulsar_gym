class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.integer :price_cents, default: 0, null: false
      t.datetime :expiration
      t.references :gym, null: false, foreign_key: true
      t.references :subscription_plan, null: false, foreign_key: true
      t.boolean :is_active

      t.timestamps
    end
  end
end
