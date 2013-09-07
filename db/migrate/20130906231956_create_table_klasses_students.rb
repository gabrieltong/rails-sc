class CreateTableKlassesStudents < ActiveRecord::Migration
  def change
  	create_table :klasses_students,:id=>false do |t|
      t.integer :klass_id
      t.integer :student_id
    end
    add_index :klasses_students,:klass_id
    add_index :klasses_students,:student_id

  	create_table :klasses_teachers,:id=>false do |t|
      t.integer :klass_id
      t.integer :teacher_id
    end
    add_index :klasses_teachers,:klass_id
    add_index :klasses_teachers,:teacher_id
  end
end
