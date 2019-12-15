Rails.application.routes.draw do
  resources :user_states
  resources :bill_votes
  resources :builds
  resources :representative_profiles
  resources :constituent_profiles
  resources :users
  resources :bills
  resources :votes

  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
