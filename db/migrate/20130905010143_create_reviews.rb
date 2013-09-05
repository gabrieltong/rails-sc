class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :person_id
      t.datetime :start_at
      t.string :will

      t.timestamps
    end
  end
end
