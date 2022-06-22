class CreateWrdPwRs < ActiveRecord::Migration[7.0]
  def change
    create_table :wrd_pw_rs do |t|
      t.integer :score
      t.integer :level
      t.string :type
      t.integer :num_reports
      t.string :cellphone_num
      t.string :referral
      t.integer :sucessful_projects
      t.integer :sucessful_services
      t.integer :sucessful_sales
      t.integer :community_service_score

      t.timestamps
    end
  end
end
