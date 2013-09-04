class CreateBaomings < ActiveRecord::Migration
  def change
    create_table :baomings do |t|
      t.integer :person_id
      t.string :discount_way
      t.string :payment_way
      t.integer :makeup
      t.datetime :next
      t.string :important
      t.boolean :installment
      t.float :installment_duration
      t.float :installment_value
      t.float :installment_last

      t.timestamps
    end
  end
end
