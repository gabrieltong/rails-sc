class School < ActiveRecord::Base
  attr_accessible :title
  has_many :majors
  has_many :people
end
