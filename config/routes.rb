Rails.application.routes.draw do
  resources :restaurents
  resources :restaurant_menus
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root "restaurents#index"
end
