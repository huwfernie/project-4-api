class CreateAdverts < ActiveRecord::Migration[5.0]
  def change
    create_table :adverts do |t|
      t.string :title
      t.string :body
      t.references :user, foreign_key: true
      t.float :valueMax
      t.float :valueMin

      t.timestamps
    end
  end
end
