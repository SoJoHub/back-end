class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :task
      t.boolean :complete
      t.references :application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
