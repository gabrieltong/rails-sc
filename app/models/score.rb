class Score < ActiveRecord::Base
  attr_accessible :person_id, :type, :value
  belongs_to :person
end
