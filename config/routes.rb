Rails.application.routes.draw do
  use_doorkeeper
  namespace :api do
    get "orders" => 'orders#index'
    get "orders/:id" => 'orders#show'
    post 'orders' => 'orders#create'
    patch 'orders/:id' => 'orders#update'
    delete 'orders/:id' => 'orders#delete'
    post "registrations" => 'registrations#create'
    get "me"=> 'users#me'
    delete "me" =>'users#delete'
  end

end
