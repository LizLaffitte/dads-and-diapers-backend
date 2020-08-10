class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :rank
  attribute :reviews do | user |
    user.reviews.map do | review |
      {
        id: review.id,
        location_id: review.listing_id, 
        mens: review.mens, 
        womens: review.womens, 
        private: review.private, 
        broken: review.broken, 
        clean: review.clean
      }
    end
  end  
end
