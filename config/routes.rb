Rails.application.routes.draw do
  scope :api do
    resources :messages
    resources :offers
    resources :adverts
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
