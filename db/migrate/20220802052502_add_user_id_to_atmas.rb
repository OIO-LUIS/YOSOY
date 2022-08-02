class AddUserIdToAtmas < ActiveRecord::Migration[7.0]
  def change
    add_column :atmas, :user_id, :integer
    add_index :atmas, :user_id
  end
end
