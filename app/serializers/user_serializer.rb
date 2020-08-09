class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username

  # attribute :reviews 
end
