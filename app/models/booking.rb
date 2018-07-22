class Booking < ApplicationRecord
  belongs_to :host
  belongs_to :dj
  validates :address, presence: true
  validates :date, presence: true
  validates :time, presence: true
end
