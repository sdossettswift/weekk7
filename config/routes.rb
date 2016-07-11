Rails.application.routes.draw do
  namespace :api do
    get "orders" => 'orders#index'
    get "orders/:id" => 'orders#show'
  end

end
