json.extract! bill, :id, :body, :title, :history, :email, :voting_date, :status, :website, :created_at, :updated_at
json.url bill_url(bill, format: :json)
