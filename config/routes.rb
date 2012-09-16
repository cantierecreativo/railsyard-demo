YardRecords::Application.routes.draw do
  railsyard_authentication_devise_for :users

  get "reset" => "reset#demo"
end
