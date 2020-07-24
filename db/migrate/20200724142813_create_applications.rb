class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.integer :user_id
      t.integer :job_listing_id
      t.datetime :date_applied
      t.string :status
      t.string :to_do_list

      t.timestamps
    end
  end
end
