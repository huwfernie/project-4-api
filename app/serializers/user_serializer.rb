class UserSerializer < ActiveModel::Serializer
  has_many :adverts
  has_many :offers
  has_many :messages

  attributes :id, :username, :email, :address, :phoneNumber
end
