class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
    	t.string :t_title
    	t.text :t_content
    	t.integer :user_id
      t.timestamps
    end
    add_index :topics , :user_id
  end
end
