class CreateWarnings < ActiveRecord::Migration
  def change
    create_table :warnings do |t|
      t.string :title
      t.integer :person_id

      t.timestamps
    end
  end
end
