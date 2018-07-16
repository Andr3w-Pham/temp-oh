class Host < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, source: :host, dependent: :destroy
end
