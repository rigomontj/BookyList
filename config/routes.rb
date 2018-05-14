Rails.application.routes.draw do
  get 'add_books/scan'
  post 'add_books/scan'
  post 'add_books/addisbn'
  get 'home/index'
  devise_for :users
  root to: "home#index"
end
