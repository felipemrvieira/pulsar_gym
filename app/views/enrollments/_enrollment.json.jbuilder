json.extract! enrollment, :id, :obs, :price_cents, :expiration, :is_active, :plan_id, :customer_id, :created_at, :updated_at
json.url enrollment_url(enrollment, format: :json)
