class ReviewsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.create(review_params)

    redirect_to movie_path(@movie)
    end


  def destory
  end

  private

  def review_params
    params.require(:review).permit(:body, :rating, :reviewer)
  end
    
    
end
