class UserSerializer < ActiveModel::Serializer
  has_many :adverts
  has_many :offers
  # has_many :messages_sent -- these are not needed because 
  # has_many :messages_recieved
  attributes :id, :username, :email, :address, :phoneNumber, :messages
end
