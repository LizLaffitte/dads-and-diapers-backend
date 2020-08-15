class ListingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address, :lat, :long, :mens_chance, :womens_chance, :isolated_chance, :clean_chance, :working_chance
  attribute :reviews do | listing |
    listing.reviews.map do | review |
      {
        id: review.id,
        user_id: review.user_id
    }
    end
  end
end
