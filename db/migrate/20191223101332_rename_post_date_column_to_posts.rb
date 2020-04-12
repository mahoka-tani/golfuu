class RenamePostDateColumnToPosts < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :post_date, :start_time
  end
end
