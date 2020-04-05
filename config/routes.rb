Rails.application.routes.draw do
  root 'books#top'
  get '/books' => 'books#index'
  post '/books' => 'books#create'
  resources :books, only: [:show, :edit, :update, :destroy]
end