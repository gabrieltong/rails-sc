class College < ActiveRecord::Base
  attr_accessible :title
  has_many :people
end
