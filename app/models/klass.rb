# encoding: utf-8
class Klass < ActiveRecord::Base
  
  has_and_belongs_to_many :students,:uniq => true  
  has_and_belongs_to_many :teachers,:uniq => true    
  has_and_belongs_to_many :rooms,:uniq=>true
  has_many :klassplans
  has_many :klassjoins
  has_many :fronts,:through=>:klassjoins  
  # has_and_belongs_to_many :people,:uniq => true 
  validates :title, :presence => true    
end
