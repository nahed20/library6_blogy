Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/books' => "books#index" # books_path
    get '/books/:id' => "books#show", as: 'book'  #we use book_bath(book) when we want to show a specifiec book in browser
    get '/movies'   =>'movies#index'
    get '/movies/:id' => "movies#show", as: 'movie'
  end
