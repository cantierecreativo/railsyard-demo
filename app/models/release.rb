class Release < ActiveRecord::Base
  has_image :artwork
  accepts_nested_attributes_for :artwork

  belongs_to :release_type
  belongs_to :genre
  attr_accessible :barcode, :name, :published, :release_date, :tracklist, :artwork_attributes, :artwork_artist, :genre_id, :release_type_id, :artist_ids

  has_and_belongs_to_many :artists

  default_scope where(published: true).order("created_at DESC")

  def genres
    genre.parents.map(&:name).join ', '
  end
end
