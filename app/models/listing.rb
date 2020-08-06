class Listing < ApplicationRecord
    has_many :reviews
    geocoded_by :address, latitude: :lat, longitude: :long
    after_validation :geocode
end
