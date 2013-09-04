class AddSexToPeople < ActiveRecord::Migration
  def change
    add_column :people, :sex, :string
  end
end
