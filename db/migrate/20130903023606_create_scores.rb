class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :value
      t.string :type
      t.integer :person_id

      t.timestamps
    end
  end
end
