# -*- coding: utf-8 -*-
Railsyard::Backend.define_sidebar do

  group :resources do # group name, or just leave it blank
    resource Artist # resource or instance
    resource Release
    resource ReleaseType
    resource Genre
  end

  group :admin do
    resource User
    instance Settings
  end

  group do
    link "Go to the website ➞", "/", target: :blank
  end

end
