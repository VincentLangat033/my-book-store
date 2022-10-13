Rails.application.routes.draw do

    get '/hello', to: 'application#hello_world'
    get '/home' , to: 'application#home'

    resources :users, only: [:update, :destroy]

    get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
