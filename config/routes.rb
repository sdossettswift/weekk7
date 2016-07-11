Rails.application.routes.draw do
  use_doorkeeper
  namespace :api do
    get "orders" => 'orders#index'
    get "orders/:id" => 'orders#show'

    post "registrations" => 'registrations#create'
  end

end
