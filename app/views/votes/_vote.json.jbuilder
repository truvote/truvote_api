json.extract! vote, :id, :user_id, :bill_id, :thumbs_up, :created_at, :updated_at
json.url vote_url(vote, format: :json)
