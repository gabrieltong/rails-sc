class CreateKlassjoins < ActiveRecord::Migration
  def change
    create_table :klassjoins do |t|
      t.integer :klass_id
      t.integer :front_id

      t.timestamps
    end
  end
end
