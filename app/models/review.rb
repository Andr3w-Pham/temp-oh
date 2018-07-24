class Review < ApplicationRecord
  belongs_to :host
  belongs_to :dj
  validates :rating, presence: true
  validates :comment, presence: true
  RATING = %w{ 5 4 3 2 1 }
end
