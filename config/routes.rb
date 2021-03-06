Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :update, :show, :create, :destroy]
      resources :folders, only: [:index, :update, :show, :create, :destroy]
      resources :notes, only: [:index, :update, :show, :create, :destroy]
      resources :reminders, only: [:index, :update, :show, :create, :destroy]
    end
  end
end
