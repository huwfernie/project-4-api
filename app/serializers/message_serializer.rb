class MessageSerializer < ActiveModel::Serializer
  belongs_to :sender
  belongs_to :reciever

  attributes :id, :subject, :body, :sender_id, :reciever_id, :created_at, :advert_id, :offer_id
end
