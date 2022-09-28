Rails.application.routes.draw do
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  devise_for :users
  resources :users, only: [:index,:show, :edit, :update]
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'about'
end
