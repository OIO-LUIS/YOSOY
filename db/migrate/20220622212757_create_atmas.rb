class CreateAtmas < ActiveRecord::Migration[7.0]
  def change
    create_table :atmas do |t|
      t.integer :score
      t.integer :level
      t.integer :antiquity
      t.integer :activity_score
      t.integer :community_serviceScore
      t.integer :sucessful_projects
      t.integer :reactivity_score
      t.boolean :is_artist
      t.boolean :is_creator

      t.timestamps
    end
  end
end
