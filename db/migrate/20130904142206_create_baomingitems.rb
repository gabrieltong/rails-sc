class CreateBaomingitems < ActiveRecord::Migration
  def change
    create_table :baomingitems do |t|
      t.integer :baoming_id
      t.boolean :free
      t.integer :klass_id
      t.datetime :end_at

      t.timestamps
    end
  end
end
