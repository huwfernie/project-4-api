class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :body
      t.references :user, foreign_key: true
      t.float :value
      t.string :image

      t.timestamps
    end
  end
end
