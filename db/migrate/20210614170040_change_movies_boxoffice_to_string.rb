class ChangeMoviesBoxofficeToString < ActiveRecord::Migration[5.2]
  def change
    change_column :movies, :box_office, :string
  end
end
