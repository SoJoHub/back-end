class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :age, :field, :phone_number
end
