class AddReleasedFlagToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :released, :boolean
  end
end
