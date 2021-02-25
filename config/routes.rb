Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :cocktails

resources :ingredients, only: [:index, :show]

resources :doses

end
