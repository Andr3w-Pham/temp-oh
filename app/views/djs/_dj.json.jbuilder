json.extract! dj, :id, :name, :description, :location, :portfolio, :rate, :image, :dj_check, :user_id, :created_at, :updated_at
json.url dj_url(dj, format: :json)
