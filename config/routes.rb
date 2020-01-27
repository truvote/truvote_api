Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :bills
      resources :votes
    end
  end

  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
