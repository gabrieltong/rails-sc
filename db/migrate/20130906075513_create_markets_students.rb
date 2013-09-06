class CreateMarketsStudents < ActiveRecord::Migration
  def change
    create_table :markets_students do |t|
      t.integer :market_id
      t.integer :student_id
      t.string :state
      t.timestamps
    end
  end
end
