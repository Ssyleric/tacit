Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'connect_item', to: 'services#connect_item', as: :connect_item
  get 'google_calendar_item', to: 'services#google_calendar_item'
  get "/pages/:page" => "pages#demoindex"
  get "/pages/:page" => "pages#demoshow"
  get "charts" => "pages#charts"
  get "chartsshow" => "pages#chartsshow"
  resources :subscriptions, only: [ :index, :show ] do
    resources :operators, only: [:show]
  end

  # get "subscriptions", to: "subscriptions#index"
  # get "subscriptions/:id", to: "subscriptions#show"
  # get "subscriptions/:id/operators/:id", to: "operators#show", as: :operator


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
