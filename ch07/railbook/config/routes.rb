# 리스트 7-23 routes.rb

Rails.application.routes.draw do
  resources :members
  resources :fan_comments
  resources :authors
  resources :books do
    resources :reviews, only: [ :index, :new, :create ]
  end
  resources :reviews do
    get :unapproval, on: :collection
    get :draft, on: :member
  end

  resources :users do
    get :unapproval, on: :collection
    get :draft, on: :member
  end

  concern :additional do
    get :unapproval, on: :collection
    get :drafetl, on: member
  end

  resources :reviews, concerns: :additional
  resources :users, concerns: :additional
  resource :config
  namespace :admin do
    resources :books
  end
  scope module: :admin do
    resources :books
  end
  scope :admin do
    resources :books
  end
  scope shallow_prefix: :b do
    resources :books do
      resources :reviews, shallow: true
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match ':controller(/:action(/:id))', via: [ :get, :post, :patch ]
  get '/blogs/:user_id' => 'blogs#index'
  get '/hello/view'
  get '/articles(/:category)' => 'articles#index', defaults: { category: 'general', format: 'xml' }
  get 'blogs/:user_id' => 'blogs#index', constraits: { user_id: /[A-Za-z0-9]{3,7}/ }
  get ':controller(/:action(/:id))', constroller: /common\/[^\/]+/
  get 'articles' => 'main#index', as: :top
  get 'articles/*category/:id' => 'articles#category'
  get '/books/:id' => redirect('/articles/%{id}')
  get '/books/:id' => redirect {|p, req| "/articles/#{p[:id].to_i + 10000}" }
  root to: 'books#index'
end
