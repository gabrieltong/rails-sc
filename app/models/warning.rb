class Warning < ActiveRecord::Base
  attr_accessible :title, :person_id
  belongs_to :person
end
