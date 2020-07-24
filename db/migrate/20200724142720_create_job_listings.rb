class CreateJobListings < ActiveRecord::Migration[6.0]
  def change
    create_table :job_listings do |t|
      t.string :company
      t.string :title
      t.string :description
      t.string :location
      t.string :listing_url

      t.timestamps
    end
  end
end
