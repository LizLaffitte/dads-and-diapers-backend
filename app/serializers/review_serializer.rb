class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :mens, :womens, :isolated, :working, :clean, :listing_id
  attribute :user do |review| 
    {
      username: review.user.username,
      id: review.user.id
    } 
  end
end
