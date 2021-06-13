class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.datetime :date_of_release
      t.integer :box_office

      t.timestamps
    end
  end
end
