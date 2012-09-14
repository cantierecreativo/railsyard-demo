Railsyard::Backend.define_editor_for Artist do

  list do
    label :name

    field :created_at
  end

  edit do
    field :name
    field :biography, as: :wysihtml5 do
      input_options toolbar:
        {commands: [:bold, :italic, :link, :image, :unordered_list, :ordered_list, :source]} # any of these
    end
    field :country
    field :homepage_url

    image_gallery :photos
  end

end
