class Booking < ApplicationRecord
  belongs_to :host
  belongs_to :dj
end
