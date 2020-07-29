class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :task
      t.boolean :complete
      t.integer :application_id

      t.timestamps
    end
  end
end
