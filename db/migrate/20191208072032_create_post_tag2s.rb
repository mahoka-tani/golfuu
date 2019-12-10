class CreatePostTag2s < ActiveRecord::Migration[5.1]
  def change
    create_table :post_tag2s do |t|
      t.references :post, foreign_key: true
      t.references :tag2, foreign_key: true

      t.timestamps
    end
  end
end
