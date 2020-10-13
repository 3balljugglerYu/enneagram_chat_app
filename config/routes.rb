Rails.application.routes.draw do
  devise_for :users
  # get 'enneagram_types/index'
  root to: "messages#index"
  resources :enneagram_types
end
