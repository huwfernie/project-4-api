class AdvertSerializer < ActiveModel::Serializer
  has_many :messages
  attributes :id, :title, :body, :user_id, :valueMax, :valueMin
end
