class OfferSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :user_id, :value, :image
end
