Railsyard::Backend.define_instance_editor_for Settings do

  group :general do
    field :site_name
  end

  group :homepage do
    field :home_banner_text, as: :wysihtml5 do
      input_options toolbar:
        {commands: [:bold, :italic, :link, :image, :unordered_list, :ordered_list, :source]} # any of these
    end
    field :home_text, as: :wysihtml5 do
      input_options toolbar:
        {commands: [:bold, :italic, :link, :image, :unordered_list, :ordered_list, :source]} # any of these
    end
  end

  group :about do
    field :about_text, as: :wysihtml5 do
      input_options toolbar:
        {commands: [:bold, :italic, :link, :image, :unordered_list, :ordered_list, :source]} # any of these
    end
  end

  group :contact do
    field :contact_text, as: :wysihtml5 do
      input_options toolbar:
        {commands: [:bold, :italic, :link, :image, :unordered_list, :ordered_list, :source]} # any of these
    end
    field :contact_address
    field :contact_phone
    field :contact_fax
    field :contact_email
    field :contact_latitude
    field :contact_longitude
  end

end
