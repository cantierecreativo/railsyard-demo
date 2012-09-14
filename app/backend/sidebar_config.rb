Railsyard::Backend.define_sidebar do

  group :resources do # group name, or just leave it blank
    resource Artist # resource or instance
    resource Release
    resource ReleaseType
    resource Genre
  end

end
