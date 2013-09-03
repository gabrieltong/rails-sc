class AddSchoolIdAndMajorIdToPerson < ActiveRecord::Migration
  def change
    add_column :people,:school_id,:integer
    add_column :people,:major_id,:integer
  end
end
