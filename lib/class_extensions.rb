String.class_eval do
  def urlify
    gsub(/[^A-Za-z0-9]+/, '-').downcase
  end
end
