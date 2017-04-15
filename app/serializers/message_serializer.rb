class MessageSerializer < ActiveModel::Serializer
  attributes :id, :subject, :body, :sender_id, :reciever_id
end
