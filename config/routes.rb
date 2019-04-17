Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :dogs, only: [:index, :create, :destroy]
      resources :users, only: [:create]
    end
  end
end
