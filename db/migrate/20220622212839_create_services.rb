class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :type
      t.string :reviews
      t.string :score
      t.string :image
      t.string :comments

      t.timestamps
    end
  end
end
