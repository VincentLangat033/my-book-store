class UserSerializer
  include JSONAPI::Serializer

  attributes :id, :username, :email, :bookshelves

  

  
end