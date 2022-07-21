class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :type
      t.integer :ticket_cost
      t.integer :total_cost
      t.integer :ticket_quantity
      t.string :location_city
      t.string :location_address
      t.string :location_lat
      t.string :location_lng
      t.boolean :community_benefit
      t.integer :community_serviceScore
      t.string :target_group
      t.string :age_group
      t.boolean :is_artist
      t.boolean :non_profit
      t.string :tags
      t.integer :social_contribution
      t.integer :overall_score
      t.string :comments

      t.timestamps
    end
  end
end
