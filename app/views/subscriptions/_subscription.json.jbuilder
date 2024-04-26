json.extract! subscription, :id, :price, :expiration, :gym_id, :subscription_plan_id, :is_active, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
