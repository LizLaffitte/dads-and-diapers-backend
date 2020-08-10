class ListingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address, :lat, :long, :mens_chance, :womens_chance, :private_chance, :clean_chance, :broken_chance
  attribute :reviews do | listing |
    listing.reviews.map do | review |
      {
        id: review.id,
        user_id: review.user_id, 
        mens: review.mens, 
        womens: review.womens, 
        private: review.private, 
        broken: review.broken, 
        clean: review.clean
    }
    end
  end
end
