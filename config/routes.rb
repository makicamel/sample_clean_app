Rails.application.routes.draw do
  resources :test
  root "test#index"
end
