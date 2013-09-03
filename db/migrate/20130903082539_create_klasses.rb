class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :title
      t.string :state
      t.boolean :projector
      t.boolean :sound
      t.boolean :mic
      t.integer :capacity
      t.float :duration
      t.float :frequency
      t.float :cycle
      t.integer :section
      t.string :kind
      t.boolean :chaban
      t.string :style
      t.boolean :video_makeup
      t.integer :score
      t.text :remark
      t.boolean :network
      t.text :tools

      t.timestamps
    end
  end
end
