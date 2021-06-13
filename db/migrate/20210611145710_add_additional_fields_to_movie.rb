class AddAdditionalFieldsToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :imdb_rating, :string
    add_column :movies, :description, :text
  end
end
