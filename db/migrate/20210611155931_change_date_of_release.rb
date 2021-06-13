class ChangeDateOfRelease < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :date_of_release
    add_column :movies, :date_of_release, :string
  end
end
