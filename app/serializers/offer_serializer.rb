class OfferSerializer < ActiveModel::Serializer
  has_many :messages
  attributes :id, :title, :body, :user_id, :value, :image
end
