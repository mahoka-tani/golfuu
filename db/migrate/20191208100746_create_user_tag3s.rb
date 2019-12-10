class CreateUserTag3s < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tag3s do |t|
      t.references :user, foreign_key: true
      t.references :tag3, foreign_key: true

      t.timestamps
    end
  end
end
