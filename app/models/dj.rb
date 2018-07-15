class Dj < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :reviews, through: :bookings, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
