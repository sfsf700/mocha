Rails.application.routes.draw do
  devise_for :users, path: 'author'
  root to: "blogs#index"
  
  resources :blogs, only:[:index, :show, :genre, :owner] do
    collection do
      get 'search'
    end
  end

  namespace :admin, path: 'author' do
    resources :blogs, only: [:new, :create, :edit, :update, :destroy]
  end

  get '/blogs/genre/:id', to: "blogs#genre"
  get 'owner', action: :owner, controller: 'blogs'

end
