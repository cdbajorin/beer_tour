Rails.application.routes.draw do

root to: "users#index"

# get "/", to: "users#new", as: "new_user"

get "/users/:username", to: "users#show", as: "user"
resources :users, except: [:show] do
  # collection do
    # get ":username", to: "users#show", as: "user"
  # end
  resources :favorites, only: [:create, :destroy]
  resources :tours, only: [:edit, :show, :update, :destroy]
end



resources :tours, only: [:new, :create] do
  collection do
    get "search"
  end
end

get "/breweries/search", to: "breweries#search", as: "search_breweries"
get "/breweries/results", to: "breweries#results", as: "breweries_results"


# resources :breweries do
#   collection do
#     get "search"
#     get "results"
#   end
# end

resource :session, only: [:create, :destroy]
get "/login", to: "sessions#new", as: "new_session"


######### PJ'S ROUTES ########

# root to: "users#index"

#   resources :users, except: [:new] do
#     resources :favorites do
#       collection do
#         get "search"
#       end
#     end
#     resources :tours do
#       collection do
#         get "search"
#       end
#     end
#   end
#   get "/signup", to: "users#new", as: "new_user"

#   resources :breweries, only: [:index, :show] do
#     collection do
#       get "search"
#     end
#     member do
#       get "take_a_look"
#     end
#   end

#   resource :session, only: [:create, :destroy]
#   get "/login", to: "sessions#new", as: "new_session"




########### END PJ ###########


######### ORIGINAL ROUTES ############

#   root to: "users#index"

#   get '/users' => "users#index"

#   get '/users/new' => "users#new"

#   post '/users' => "users#create"

#   get '/users/login' => "users#login"

#   post '/users/login' => "users#new_session"

#   get "/users/logout" => "users#destroy"

#   get '/users/:username' => "users#profile"

#   get '/users/:username/:id' => "users#tour"

#   get '/favorites/:id/delete' => "favorites#delete"

# resources :users
# resources :sessions


# ##Tours

#   get '/tours/new' => "tours#new"

#   post '/tours/create'=> "tours#create"

#   get '/tours/search' => "tours#search"

#   post '/tours/search' => "tours#favorite"

#   get '/tours/:id/delete' => "tours#delete"


# ##Favorites

#   get '/favorites/:id' => "favorites#delete"


# ##Breweries


#   get '/breweries/search' => "breweries#search"

#   get '/breweries/search/results' => "breweries#results"

#   get '/breweries/:b_name_id' => "breweries#show"

end
