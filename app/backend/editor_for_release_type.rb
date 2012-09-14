Railsyard::Backend.define_editor_for ReleaseType do

  list do
    label :name

    field :created_at
  end

  edit do
    field :name
  end

end
