class Dj < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :portfolio, presence: true
  validates :rate, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 80, only_integer: true }, presence: true
  validates :image, presence: true
  # validates :audio, presence: true
  belongs_to :user
  mount_uploader :image, ImageUploader
  mount_uploader :audio, AudioUploader
  has_many :bookings, dependent: :destroy
  # has_many :reviews, through: :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  #search
  # include PgSearch
  # pg_search_scope :search, against: [:name, :rate],
  #   using: {tsearch: {dictionary: "english"}}

  def self.text_search(query)
    if query.present?
      where("name @@ :q", q: query)
    else
      unscoped
    end
  end
end
