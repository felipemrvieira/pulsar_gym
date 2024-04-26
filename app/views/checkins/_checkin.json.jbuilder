json.extract! checkin, :id, :customer_id, :gym_id, :created_at, :updated_at
json.url checkin_url(checkin, format: :json)
