json.extract! bill_vote, :id, :bill_id, :user_id, :amount, :created_at, :updated_at
json.url bill_vote_url(bill_vote, format: :json)
