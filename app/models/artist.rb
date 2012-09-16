class Artist < ActiveRecord::Base
  has_image_gallery :photos
  accepts_nested_attributes_for :photos
  attr_accessible :homepage_url, :country, :biography, :name, :photos_attributes, :pretty_url

  has_and_belongs_to_many :releases

  before_save { |artist| artist.pretty_url = artist.name.urlify }
end
