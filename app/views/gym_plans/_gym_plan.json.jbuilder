json.extract! gym_plan, :id, :name, :price_cents, :expiration, :is_active, :gym_id, :created_at, :updated_at
json.url gym_plan_url(gym_plan, format: :json)
