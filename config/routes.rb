Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "posts#index"
  resources :posts

  namespace :admin do
    root "posts#index"
    resources :posts
  end
end
