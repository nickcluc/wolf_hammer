Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :dots, only: [:index]
      resources :matches, only: [:index]
    end
  end
end
