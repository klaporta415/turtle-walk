class CreateWalks < ActiveRecord::Migration[5.1]
  def change
    create_table :walks do |t|
    	t.references :turtle
    	t.integer :walker_id, foreign_key: true
    	t.text :walker_note

    	t.timestamps 
    end
  end
end
