class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :memo, :text
    add_column :users, :best_score, :integer
    add_column :users, :image, :string
    add_column :users, :gender, :string
  end
end
