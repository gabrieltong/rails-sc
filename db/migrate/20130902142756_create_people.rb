class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :username
      t.integer :phone
      t.integer :qq
      t.string :state
      t.boolean :home_51
      t.boolean :home_101
      t.boolean :home_summer
      t.boolean :exam_4
      t.boolean :exam_6
      t.boolean :exam_toefl
      t.boolean :exam_qimo
      t.boolean :guide
      t.boolean :guide_vip
      t.boolean :logic
      t.boolean :alumnus
      t.boolean :finished

      t.timestamps
    end
  end
end
