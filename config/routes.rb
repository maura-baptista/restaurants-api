Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: "api/v1/restaurants#index", defaults: { format: :json }
 # root to: "api/v1/restaurants#index"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
        resources :restaurants, only: [ :index, :show, :update, :create, :destroy ]
    end
  end
  
end
