class CreateKlassplans < ActiveRecord::Migration
  def change
    create_table :klassplans do |t|
      t.integer :klass_id
      t.datetime :start_at
      t.datetime :before_klass_notification_at

      t.timestamps
    end
  end
end
