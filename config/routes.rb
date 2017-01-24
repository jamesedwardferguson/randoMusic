Rails.application.routes.draw do

    root 'pages#home'
    get '/home' => 'pages#home'

    get '/' => 'pages#soundcloud_API'
    get '/soundcloud' => 'songs#soundcloud_search', :as => 'soundcloud'


    get "/users/edit" => 'users#edit', :as => 'edit_user'
    resources :users, :except => [:edit]

    resources :playists, :artists, :songs

    get "/login" => 'session#new', :as => 'login'
    post "/login" => 'session#create'
    delete "/login" => 'session#destroy'
end
