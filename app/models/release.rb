class Release < ActiveRecord::Base
  has_image :artwork
  accepts_nested_attributes_for :artwork

  belongs_to :release_type
  belongs_to :genre
  attr_accessible :barcode, :name, :published, :release_date, :tracklist, :artwork_attributes, :genre_id, :release_type_id
end
