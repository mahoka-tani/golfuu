class AddPostDateToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :post_date, :datetime
  end
end
