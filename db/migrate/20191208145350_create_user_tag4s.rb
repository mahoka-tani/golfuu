class CreateUserTag4s < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tag4s do |t|
      t.references :user, foreign_key: true
      t.references :tag4, foreign_key: true

      t.timestamps
    end
  end
end
