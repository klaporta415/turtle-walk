class CreateTurtles < ActiveRecord::Migration[5.1]
  def change
    create_table :turtles do |t|
    	t.string :name
    	t.string :temperament
    	t.integer :owner_id, foreign_key: true

    	t.timestamps
    end
  end
end
