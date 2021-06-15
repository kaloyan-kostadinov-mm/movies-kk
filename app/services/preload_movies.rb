module PreloadMovies
  def load_most_popular
    response = Faraday.get 'https://imdb-api.com/en/API/MostPopularMovies/k_s304vpe9'
    JSON.parse(response.body).with_indifferent_access[:items].take(50).each do |movie|
      m = Movie.new(
          title: movie[:title],
          date_of_release: movie[:year],
          imdb_rating: movie[:imDbRating],
          imdb_idx: movie[:id],
          released: true
        )
      m.remote_movie_cover_url = movie[:image]
      get_each_movie(m)
    end
  end

  def get_each_movie(movie)
    response = Faraday.get "https://imdb-api.com/en/API/Title/k_s304vpe9/#{movie.imdb_idx}"
    res = JSON.parse(response.body).with_indifferent_access
    movie.description = res[:plot]
    movie.runtime_min = res[:runtimeMins]
    movie.box_office = res[:boxOffice][:cumulativeWorldwideGross] || "$0"
    movie.save
  end

  def load_top_250
    response = Faraday.get 'https://imdb-api.com/en/API/Top250Movies/k_s304vpe9'
  end
end