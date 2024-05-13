class CreateTodos < ActiveRecord::Migration[7.1]
  def change
    create_table :todos do |t|
      t.text :description
      t.integer :done

      t.timestamps
    end
  end
end
