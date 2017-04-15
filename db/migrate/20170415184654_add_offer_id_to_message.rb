class AddOfferIdToMessage < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :offer, foreign_key: true
  end
end
