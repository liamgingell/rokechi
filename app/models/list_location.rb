class ListLocation < ApplicationRecord
  belongs_to :list
  belongs_to :location
end
