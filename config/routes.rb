Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'connect_item', to: 'services#connect_item', as: :connect_item
  get "/pages/:page" => "pages#demoshow"
  get "/pages/:page" => "pages#demoindex"
  resources :subscriptions, only: [ :index, :show ]

get "subscriptions", to: "subscriptions#index"
get "subscriptions/:id", to: "subscriptions#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
