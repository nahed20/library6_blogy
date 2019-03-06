class MoviesController <  ApplicationController
     def index 
        @movies = Movie.all
    end

    def show
    @movie = Movie.find(params[:id])
    end

    #delete  movie
    def destroy 
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to movies_path
    end

    #create new movie
    def new
    end

  def edit
         @movie = Movie.find(params[:id]) 
    end
    def update
        @movie = Movie.find(params[:id]) 
        if @movie.update(movie_params)
            redirect_to movie_path(@movie)
        else
            render "edit"
        end

    end

   #create new movie
   def create 
        @movie = Movie.new(movie_params)
        if @movie.save
            redirect_to movies_path
        else 
            render "new"
        end
    end

    def  movie_params
        params.require(:movie).permit(:title, :director )
    end


end

