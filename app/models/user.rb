class User < ApplicationRecord
  has_secure_password
  has_many :adverts
  has_many :offers
  has_many :messages_sent, class_name: "Message", foreign_key: "sender_id"
  has_many :messages_recieved, class_name: "Message", foreign_key: "reciever_id"

  def messages
    messages_sent + messages_recieved
  end
end
