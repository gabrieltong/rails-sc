class AddCollegeIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :college_id, :integer
  end
end
