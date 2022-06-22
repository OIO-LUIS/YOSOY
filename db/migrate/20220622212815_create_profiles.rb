class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :type
      t.integer :subscription_price
      t.integer :level
      t.string :experience

      t.timestamps
    end
  end
end
