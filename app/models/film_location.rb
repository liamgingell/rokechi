class FilmLocation < ApplicationRecord
  belongs_to :film
  belongs_to :location
end
