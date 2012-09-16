class ReleaseType < ActiveRecord::Base
  attr_accessible :name, :pretty_url
  has_many :releases

  default_scope :order => :name

  before_save { |type| type.pretty_url = type.name.urlify }
end
