json.extract! booking, :id, :host_id, :dj_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
