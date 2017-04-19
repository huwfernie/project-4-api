class Offer < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :nullify
end
