Rails.application.routes.draw do
  resources :scores
  resources :challengeboards
  resources :photos

  root 'scores#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
