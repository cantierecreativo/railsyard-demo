YardRecords::Application.routes.draw do
  railsyard_authentication_devise_for :users

  root to: "pages#home"
  get "/contact-us" => "pages#contact", :as => :contact
  get "/about-us" => "pages#about", :as => :about

  resources :releases, only: [:index, :show] do
    get 'type/:type' => 'releases#type', :on => :collection, :as => :type
  end
  resources :artists, only: [:index] do
    get ':pretty_url' => "artists#show", :on => :collection, :as => :show
  end

  get "reset" => "reset#demo"
end
