class Listing < ApplicationRecord
    has_many :reviews
    geocoded_by :address, latitude: :lat, longitude: :long
    after_validation :geocode
    validates :name, presence: true
end
