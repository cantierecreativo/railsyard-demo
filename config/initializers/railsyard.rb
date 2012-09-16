Railsyard::Backend.authentication_adapter = Railsyard::Backend::Authentication::Devise
Railsyard::Backend.authenticator_initializer = lambda { |authenticator| authenticator.scope = :user }

Railsyard::Backend.plugin_manager.add_plugin(:railsyard_demo) do
  name "Railsyard demo"
  dashboard_widget :quickstart, cell: :railsyard_demo, action: :quickstart
  dashboard_widget :list_resource, cell: :railsyard_demo, action: :list_resource
end
