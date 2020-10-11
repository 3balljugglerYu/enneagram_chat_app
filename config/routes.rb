Rails.application.routes.draw do
  # get 'enneagram_types/index'
  root to: "messages#index"
  resources :enneagram_types
end
