Railsyard::Backend.define_editor_for Settings do

  list do
    label :wysihtml5

    field :created_at
  end

  edit do
    field :footer, as: :wysihtml5 do
      input_options toolbar:
        {commands: [:bold, :italic, :link, :image, :unordered_list, :ordered_list, :source]} # any of these
    end

  end

end
