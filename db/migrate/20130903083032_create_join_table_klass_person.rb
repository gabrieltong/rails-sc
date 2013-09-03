class CreateJoinTableKlassPerson < ActiveRecord::Migration
  def up
    create_table :klasses_people,:id=>false do |t|
      t.integer :klass_id
      t.integer :person_id
    end
  end

  def down
    remove_table :klasses_people
  end
end
