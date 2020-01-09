Rails.application.routes.draw do
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show'
  post 'books' => 'books#create'
  patch 'books' => 'books#update'
end
