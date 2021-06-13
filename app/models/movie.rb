class Movie < ApplicationRecord
  validate_uniqueness_of :imdg_idx

  scope :released, -> {where(released: true)}
  scope :upcoming, -> {where(released: false)}
end
