class CreatePersonas < ActiveRecord::Migration[7.0]
  def change
    create_table :personas do |t|
      t.boolean :sell_items
      t.boolean :purchase_items
      t.boolean :createProjects
      t.boolean :participate_projects
      t.boolean :create_auctions
      t.boolean :bid_auctions
      t.boolean :provide_service
      t.boolean :book_service
      t.integer :monitored_transactions
      t.boolean :is_moderator
      t.integer :resolved_disputes
      t.boolean :validate_disputes
      t.integer :qualified_bonus

      t.timestamps
    end
  end
end
