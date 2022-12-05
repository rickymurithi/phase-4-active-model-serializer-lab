class AuthorSerializer < ActiveModel::Serializer
  attributes :name  #[only, {:username, :email, :bio, :avatar_url}]
  
  has_many :posts, Serializer: AuthorPostSerializer
  has_one :profile 
end
