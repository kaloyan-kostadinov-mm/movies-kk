class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.find_by_id(params[:movie][:id])

    if @movie.save
      redirect_to: root_path, message: "Successfully added a new movie."
    else
      redirect_to: root_path, message: "Something went wrong: #{@movie.errors}"
    end
  end
end
