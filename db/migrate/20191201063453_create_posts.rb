class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :video
      t.text :comment
      t.string :gender
      t.integer :age
      t.string :genre
      t.string :level
      t.integer :user_id
      t.string :image
 
      t.timestamps
    end
  end
end
