class AddMovieMinutesToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :runtime_min, :string
  end
end
