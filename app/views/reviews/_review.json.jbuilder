json.extract! review, :id, :description, :host_id, :dj_id, :created_at, :updated_at
json.url review_url(review, format: :json)
