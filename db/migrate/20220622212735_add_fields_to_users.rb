class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :score, :integer
    add_column :users, :reputation, :integer
    add_column :users, :positive_transactions, :integer
    add_column :users, :negative_transactions, :integer
    add_column :users, :subscription_type, :integer
    add_column :users, :verified, :boolean
    add_column :users, :biometric, :boolean
    add_column :users, :identity, :uuid
    add_column :users, :last_score, :integer
    add_column :users, :current_score, :integer
    add_column :users, :phone_number, :string
    add_column :users, :OTP, :string
  end
end
