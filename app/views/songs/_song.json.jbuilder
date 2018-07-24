json.extract! song, :id, :title, :genre, :description, :image, :audio, :dj_id, :created_at, :updated_at
json.url song_url(song, format: :json)
