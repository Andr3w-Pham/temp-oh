class Song < ApplicationRecord
  belongs_to :dj
  mount_uploader :image, ImageUploader
  mount_uploader :audio, AudioUploader
  validates :title, presence: true
  validates :genre, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :audio, presence: true
  GENRE = %w{ None Ambient Dance-&-EDM Deep-House Dubstep Electronic Hip-Hop-&-Rap House Techno Trance Other}
end
