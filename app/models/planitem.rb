class Planitem < ActiveRecord::Base
  attr_accessible :duration, :klassplan_id, :person_id, :start_at, :state, :title

  belongs_to :klassplan
  belongs_to :person
  # belongs_to :klass,:through=>:klassplan
end
