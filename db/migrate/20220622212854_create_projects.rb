class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :type
      t.integer :intitial_cost
      t.integer :total_cost
      t.integer :number_members
      t.integer :member_complexityLevel
      t.string :location_city
      t.string :location_address
      t.string :location_lat
      t.string :location_lng
      t.integer :location_radius
      t.boolean :community_benefit
      t.integer :community_serviceScore
      t.string :target_group
      t.string :age_group
      t.boolean :is_artist
      t.boolean :non_profit
      t.string :tags
      t.integer :social_contribution
      t.integer :complexity_level
      t.integer :costEffective_score
      t.integer :overall_score
      t.string :comments

      t.timestamps
    end
  end
end
