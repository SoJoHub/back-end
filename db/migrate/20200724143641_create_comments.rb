class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :thread_id
      t.integer :user_id
      t.datetime :date_time
      t.string :content

      t.timestamps
    end
  end
end
