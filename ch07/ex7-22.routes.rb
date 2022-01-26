# 리스트 7-22 routes.rb

Rails.application.routes.draw do
  get '/blogs/:user_id' => 'blogs#index'
  get '/hello/view'
  get '/articles(/:category)' => 'articles#index', defaults: { category: 'general', format: 'xml' }
  get 'blogs/:user_id' => 'blogs#index', constraits: { user_id: /[A-Za-z0-9]{3,7}/ }
  get ':controller(/:action(/:id))', constroller: /common\/[^\/]+/
  get 'articles' => 'main#index', as: :top
  get 'articles/*category/:id' => 'articles#category'
  get '/books/:id' => redirect('/articles/%{id}')
  get '/books/:id' => redirect {|p, req| "/articles/#{p[:id].to_i + 10000}" }
end
