class CreatePlanitems < ActiveRecord::Migration
  def change
    create_table :planitems do |t|
      t.string :title
      t.integer :klassplan_id
      t.integer :person_id
      t.string :state
      t.datetime :start_at
      t.float :duration

      t.timestamps
    end
  end
end
