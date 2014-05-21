Rails.application.routes.draw do

  root to: "users#index"

  get '/users' => "users#index"

  get '/users/new' => "users#new"

  post '/users' => "users#create"

  get '/users/login' => "users#login"

  post '/users/login' => "users#new_session"

  get "/users/logout" => "users#destroy"

  get '/users/:username' => "users#profile"

  get '/users/:username/:id' => "users#tour"

  get '/favorites/:id/delete' => "favorites#delete"

resources :users
resources :sessions


##Tours

  get '/tours/new' => "tours#new"

  post '/tours/create'=> "tours#create"

  get '/tours/search' => "tours#search"

  post '/tours/search' => "tours#favorite"

  get '/tours/:id/delete' => "tours#delete"


##Favorites

  get '/favorites/:id' => "favorites#delete"


##Breweries


  get '/breweries/search' => "breweries#search"

  get '/breweries/search/results' => "breweries#results"

  get '/breweries/:b_name_id' => "breweries#show"

end
