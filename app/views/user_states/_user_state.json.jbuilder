json.extract! user_state, :id, :user_id, :start_date, :end_date, :role, :district_id, :created_at, :updated_at
json.url user_state_url(user_state, format: :json)
