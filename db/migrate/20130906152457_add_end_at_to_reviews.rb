class AddEndAtToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :end_at, :datetime
  end
end
