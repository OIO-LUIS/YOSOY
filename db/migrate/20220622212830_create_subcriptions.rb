class CreateSubcriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subcriptions do |t|
      t.string :name
      t.integer :total_price
      t.integer :tax
      t.integer :add_donation

      t.timestamps
    end
  end
end
