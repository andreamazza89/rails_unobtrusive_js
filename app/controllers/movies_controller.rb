class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.create(movie_params)
    respond_to :js
  end

  def show_description
    respond_to :js
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description)
  end
end
