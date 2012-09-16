class RailsyardDemoCell < Cell::Rails
  helper UrlsHelper             # from railsyard-backend

  def quickstart(settings)
    @settings = settings
    render
  end

  def list_resource(settings)
    @resource = settings[:resource].to_s.capitalize.constantize
    @fields = settings[:fields]
    @fields_name = @fields.map(&:to_s).map(&:humanize)
    @items = @resource.limit(10).order(settings[:sort_by])
    render
  end

end
