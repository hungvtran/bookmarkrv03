Rails.application.routes.draw do
  get 'bookmarks' => 'bookmarks#show'
  root 'static_pages#home'
  get 'upload_file' => 'bookmarks#new'
  get 'signup' => 'users#new'
  get 'profile' => 'users#show'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'bookmarksdemo' => 'users#bookmarks'
  get 'users/new'
  resources :users
  resources :bookmarks
end
