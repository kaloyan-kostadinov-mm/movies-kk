class AddMoviepictureToMovis < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :movie_cover, :string
  end
end
