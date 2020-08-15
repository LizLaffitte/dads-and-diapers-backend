class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :rank
  attribute :reviews do | user |
    user.reviews.map do | review |
      {
        id: review.id,
        location_id: review.listing_id
      }
    end
  end  
end
