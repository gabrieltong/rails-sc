class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :title

      t.timestamps
    end
  end
end
