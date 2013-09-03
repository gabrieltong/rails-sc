class AddTaskToKlass < ActiveRecord::Migration
  def change
  	add_column :klasses,:need_before_task,:boolean
  	add_column :klasses,:need_after_task,:boolean
  	add_column :klasses,:before_task,:text
  	add_column :klasses,:after_task,:text
  end
end