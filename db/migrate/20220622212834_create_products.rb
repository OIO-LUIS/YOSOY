class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :type
      t.integer :tax
      t.integer :price
      t.integer :stock
      t.string :tags
      t.string :image
      t.string :dimensions
      t.string :weight
      t.string :reviews
      t.string :score
      t.string :comments

      t.timestamps
    end
  end
end
