Railsyard::Backend.define_dashboard do

  column do
    widget :list_resource, "Recent Artists" do
      resource :artist
      fields [:name, :created_at]
      sort_by "created_at DESC"
    end

    widget :list_resource, "Recent Releases" do
      resource :release
      fields [:name, :published, :created_at]
      sort_by "created_at DESC"
    end
  end

  column do
    widget :quickstart
  end

end
