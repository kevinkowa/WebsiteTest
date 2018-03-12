Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :posts
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'

  get "/lessons" => "static_pages#lessons"
  get "/lessons/:title" => "static_pages#show"
  get "/search" => "static_pages#search"
  get "/about" => "static_pages#about"
end
