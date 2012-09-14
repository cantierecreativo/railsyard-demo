class Genre < ActiveRecord::Base
  attr_accessible :name, :position, :parent_id
  belongs_to :parent, class_name: "Genre"

  scope :roots, where(parent_id: nil)
  default_scope order(:position)

  def children
    Genre.where(parent_id: self)
  end
end
