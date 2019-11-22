Rails.application.routes.draw do
  root 'sub#index'
  # HTTP Protocols
    # get
    # post
    # put 
    # delete
  # get '/subs', to: 'subs#index'
  # get '/apples', to: 'subs#index'
  # get '/subs', to: 'subs#edit'
  # post '/subs', to: 'subs#create'
  # delete '/subs', to: 'subs#delete'

  resources :subs do
    resources :topics 
  end

  resources :topics do
    resources :comments
  end
  # resources :subs, only: [:new, :index]
  # resources :subs, except: [:create, :delete]

end
