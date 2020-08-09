class ListingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address, :lat, :long, :mens_chance, :womens_chance, :private_chance, :clean_chance, :broken_chance
end
