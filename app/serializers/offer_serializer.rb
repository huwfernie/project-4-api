class OfferSerializer < ActiveModel::Serializer
  has_many :messages
  attributes :id, :title, :body, :user_id, :value, :image_src

  def image_src
    object.image.url
  end
end
