class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :listing_id, :user_id, :mens, :womens, :private, :broken, :clean
  
  belongs_to :listing, serializer: ListingSerializer
end
