class AddImdbIndexToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :imdb_idx, :string
  end
end
