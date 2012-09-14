Railsyard::Backend.define_editor_for Release do

  list do
    label :name
    field :created_at
  end

  edit do
    group :general do
      field :name
      field :release_type
      field :genre
      field :tracklist, as: :wysihtml5 do
        input_options toolbar:
          {commands: [:bold, :italic, :link, :image, :unordered_list, :ordered_list, :source]} # any of these
      end
    end

    group :artwork do
      image :artwork
      field :artwork_artist
    end

    group :publishing do
      field :release_date
      field :barcode
      field :published
    end
  end

end
