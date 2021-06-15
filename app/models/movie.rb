class Movie < ApplicationRecord
  mount_uploader :movie_cover, MoviePictureUploader
  scope :released, -> {where(released: true)}
  scope :upcoming, -> {where(released: false)}
end
