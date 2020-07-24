class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.integer :application_id
      t.datetime :date
      t.boolean :complete
      t.string :interviewer
      t.string :location
      t.text :notes

      t.timestamps
    end
  end
end
