class AddColumnsToReviews < ActiveRecord::Migration
  def change
  	add_column :reviews,:user_id,:integer
  	add_column :reviews,:student_id,:integer
  	add_column :reviews,:duration,:float
  	add_column :reviews,:state,:string
  	add_column :reviews,:report_hard,:text
  	add_column :reviews,:report_soft,:text
  end
end
