class Dj < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :portfolio, presence: true
  validates :rate, presence: true
  validates :image, presence: true
  validates :audio, presence: true
  belongs_to :user
  mount_uploader :image, ImageUploader
  mount_uploader :audio, AudioUploader
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
end
