Rails.application.routes.draw do
  devise_for :users
  root to: "infomations#index"
  resources :infomations
end
