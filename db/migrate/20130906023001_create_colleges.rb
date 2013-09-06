class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :title

      t.timestamps
    end
  end
end
