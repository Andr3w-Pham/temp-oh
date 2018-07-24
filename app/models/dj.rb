class Dj < ApplicationRecord
  include PgSearch
  multisearchable :against => [:name, :rate, :location ]

  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :rate, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 80}, presence: true
  validates :image, presence: true
  # validates :audio, presence: true
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :bookings, dependent: :destroy
  # has_many :reviews, through: :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :songs, dependent: :destroy



  scope :sorted, ->{ order(name: :asc) }

  pg_search_scope :search,
                  against: [
                    :name,
                    :rate,
                    :location,
                  ],
                  using: {
                    tsearch: {
                      prefix: true,
                      normalization: 2
                    }
                  }

  def self.perform_search(keyword)
    if keyword.present?
    then Dj.search(keyword)
  else Dj.all
    end.sorted
  end

end
