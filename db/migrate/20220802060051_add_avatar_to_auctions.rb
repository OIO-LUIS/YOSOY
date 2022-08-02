class AddAvatarToAuctions < ActiveRecord::Migration[7.0]
  def change
    add_column :auctions, :avatar, :string
  end
end
