class AdvertSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :user_id, :valueMax, :valueMin
end
