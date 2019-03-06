Rails.application.routes.draw do
  resources :cars
  resources :people
  resources :posts
  get 'welcome/index'
  root 'pages#index' #to go home direct .
  get 'reviews/create'
  get 'reviews/destory'
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # get '/books' => "books#index" # books_path
    # post '/books' => "books#create" 
    # get '/books/new' => 'books#new', as: 'new_book'
    # get '/books/:id/edit' => 'books#edit', as:'edit_book'

    # get '/books/:id' => "books#show", as: 'book'  #we use book_bath(book) when we want to show a specifiec book in browser
    # get '/movies'   =>'movies#index'    
    # get '/movies/new' => "movies#new", as: 'new_movie'
    # get '/movies/:id' => "movies#show", as: 'movie'
    # post '/movies' => "movies#create"
    # patch '/books/:id' => "books#update"
    # delete '/books/:id' => "books#destroy"
    # delete '/movies/:id' => 'movies#destroy'
    # get '/movies/:id/edit' => "movies#edit", as: "edit_movie"
    # patch '/movies/:id' => "movies#update"
  resources :books
  resources :movies do 
  resources :reviews 
   end  
  resources :paintings 
  resources :articles do
  resources :comments
  end


  end
