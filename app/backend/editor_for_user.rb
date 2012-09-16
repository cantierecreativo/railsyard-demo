Railsyard::Backend.define_editor_for User do
  list do
    label :email
  end

  edit do
    field :name
    field :email
    field(:password) do
      visible { |resource, view| resource.new_record? }
    end
    field(:password_confirmation) do
      visible { |resource, view| resource.new_record? }
    end
  end
end
