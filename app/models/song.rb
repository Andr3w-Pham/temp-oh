class Song < ApplicationRecord
  include PgSearch
  multisearchable :against => [:song, :title, :genre ]
  belongs_to :dj
  mount_uploader :image, ImageUploader
  mount_uploader :audio, AudioUploader
  validates :title, presence: true
  validates :genre, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :audio, presence: true
  GENRE = %w{ None Ambient Dance-&-EDM Deep-House Dubstep Electronic Hip-Hop-&-Rap House Techno Trance Other}

  scope :sorted, ->{ order(name: :asc) }

  pg_search_scope :search,
                  against: [
                    :title,
                    :genre,
                    
                  ],
                  using: {
                    tsearch: {
                      prefix: true,
                      normalization: 2
                    }
                  }

  def self.perform_search(keyword)
    if keyword.present?
    then Song.search(keyword)
  else Song.all
    end.sorted
  end
end
