class Review < ApplicationRecord
  belongs_to :host
  belongs_to :dj
  RATING = %w{ 5 4 3 2 1 }
end
