Rails.application.routes.draw do
  scope :api do
    get 'offers/search', to: 'offers#search'
    get 'adverts/search', to: 'adverts#search'
    resources :messages
    resources :offers
    resources :adverts
    resources :users
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
