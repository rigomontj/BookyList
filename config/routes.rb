Rails.application.routes.draw do
  get 'my_books/index'
  
  get 'add_books/scan'
  post 'add_books/scan'
  
  post 'add_books/additembyupc'
  
  get 'home/index'
  
  get 'add_books/manual_entry'
  post 'add_books/manual_entry'
  post 'add_books/manual_add'
  
  devise_for :users
  root to: "home#index"
end
