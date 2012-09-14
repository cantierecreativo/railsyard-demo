class Artist < ActiveRecord::Base
  has_image_gallery :photos
  accepts_nested_attributes_for :photos
  attr_accessible :homepage_url, :country, :biography, :name, :photos_attributes
end
