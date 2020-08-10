class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :listing_id, :user_id, :mens, :womens, :private, :broken, :clean
  attribute :listing do | review| 
    {
      id: review.listing.id,
      name: review.listing.name, 
      address: review.listing.address, 
      lat: review.listing.lat, 
      long: review.listing.long, 
      mens_chance: review.listing.mens_chance, 
      womens_chance: review.listing.womens_chance, 
      private_chance: review.listing.private_chance, 
      clean_chance: review.listing.clean_chance, 
      broken_chance: review.listing.broken_chance
    }
  end
  attribute :user do |review| 
    {
      username: review.user.username,
      rank: review.user.rank
    } 
  end
end
