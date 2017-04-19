class MessageSerializer < ActiveModel::Serializer
  attributes :id, :subject, :body, :sender_id, :reciever_id, :created_at, :advert_id, :offer_id
end
