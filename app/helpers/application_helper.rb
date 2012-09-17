module ApplicationHelper

  def artists_links(artists)
    if artists.length == 1
      a = artists.first
      link_to a.name, show_artists_path(pretty_url: a.pretty_url)
    else
      link_to "Various artists", '#'
    end
  end

end
