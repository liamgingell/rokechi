class FilmTrivium < ApplicationRecord
  belongs_to :film_location
  belongs_to :user
end
