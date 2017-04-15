class UserSerializer < ActiveModel::Serializer
  has_many :adverts
  has_many :offers
  has_many :messages_sent
  has_many :messages_recieved
  attributes :id, :username, :email, :address, :phoneNumber, :adverts, :offers
end
