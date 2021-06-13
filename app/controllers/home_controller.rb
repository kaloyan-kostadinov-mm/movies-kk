class HomeController < ApplicationController
  include PreloadMovies
  before_action :load_most_popular

  def index
    @movies = Movie.released
  end
end
