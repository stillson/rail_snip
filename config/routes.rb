Rails.application.routes.draw do
  resources :tag_to_snips
  resources :tags
  resources :snips
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
