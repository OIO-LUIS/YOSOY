class CreateAuctions < ActiveRecord::Migration[7.0]
  def change
    create_table :auctions do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :type
      t.string :dimensions
      t.string :weight
      t.string :image
      t.string :condition
      t.integer :quantity
      t.string :manufacturer_country
      t.integer :initial_bid
      t.integer :current_bid
      t.integer :sold_bid
      t.string :comments

      t.timestamps
    end
  end
end
