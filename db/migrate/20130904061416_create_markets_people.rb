class CreateMarketsPeople < ActiveRecord::Migration
  def change
    create_table :markets_people do |t|
      t.integer :market_id
      t.integer :person_id
      t.string :state

      t.timestamps
    end
  end
end
