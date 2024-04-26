json.extract! subscription_plan, :id, :name, :price_cents, :expiration, :super_admin_id, :created_at, :updated_at
json.url subscription_plan_url(subscription_plan, format: :json)
