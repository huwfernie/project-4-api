class AddAdvertIdToMessage < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :advert, foreign_key: true
  end
end
