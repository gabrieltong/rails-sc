class Klassjoin < ActiveRecord::Base
  attr_accessible :front_id, :klass_id
  belongs_to :klass
  belongs_to :front,:class_name=>:Klass,:foreign_key=>:front_id
end
