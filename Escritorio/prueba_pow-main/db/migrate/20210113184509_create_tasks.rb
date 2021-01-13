class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :content
      t.references :todo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
