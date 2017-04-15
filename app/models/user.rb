class User < ApplicationRecord
  has_many :adverts
  has_many :offers
  has_many :messages, through: :adverts
  has_many :messages, through: :offers
end
