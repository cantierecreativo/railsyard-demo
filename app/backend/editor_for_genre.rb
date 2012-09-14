Railsyard::Backend.define_editor_for Genre do

  list do
    as_tree
    sortable
    label :name

    field :created_at
  end

  edit do
    field :name
    field :parent
  end

end
