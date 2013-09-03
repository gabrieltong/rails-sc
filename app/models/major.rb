class Major < ActiveRecord::Base
  attr_accessible :school_id, :title
  belongs_to :school
  has_many :people
end
