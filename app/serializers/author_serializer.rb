class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birth
end
