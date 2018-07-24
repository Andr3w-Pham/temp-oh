class Booking < ApplicationRecord
  belongs_to :host
  belongs_to :dj
  validates :address, presence: true
  validates :date, presence: true
  validates :time, presence: true
  geocoded_by :address
  after_validation :geocode  # auto-fetch coordinates
  # TIME = %w{ 1 2 3 4 5 6 7 8 9 10 11 12 }
end
