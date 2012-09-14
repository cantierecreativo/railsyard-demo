class Genre < ActiveRecord::Base
  attr_accessible :name, :position, :parent, :parent_id
  belongs_to :parent, class_name: "Genre"

  scope :roots, where(parent_id: nil)
  default_scope order(:position)

  def children
    Genre.where(parent_id: self)
  end

  def parent
    Genre.find parent_id if parent_id
  end

  def parents(genres=[self])
    root = genres.first
    if root.parent.present?
      parents([root.parent] + genres)
    else
      genres
    end
  end
end
