module PreloadMovies
  def load_most_popular
    response = Faraday.get 'https://imdb-api.com/en/API/MostPopularMovies/k_s304vpe9'
    JSON.parse(response.body)["items"].each do |movie|
      Movie.create(
        title: movie["title"],
        date_of_release: movie["year"],
        imdb_rating: movie["imDbRating"],
        imdg_idx: movie["id"]
        released: true
      )
    end
  end

  def load_top_250
    response = Faraday.get 'https://imdb-api.com/en/API/Top250Movies/k_s304vpe9'
  end
end