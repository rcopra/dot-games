class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :poster_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
