module ApplicationHelper

  def artists_links(artists)
    if artists.length == 1
      a = artists.first
      link_to a.name, artist_path(a)
    else
      link_to "Various artists", '#'
    end
  end

end
