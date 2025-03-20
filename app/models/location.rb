class Location < ApplicationRecord
    geocoded_by :address
    after_validation :geocode, if: ->(obj){ obj.address.present? && obj.latitude.nil? }
end
