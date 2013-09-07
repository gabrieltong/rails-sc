class Student < Person
  has_many :markets_students
  has_many :markets,:through=>:markets_students    
  has_and_belongs_to_many :courses,:uniq => true  

  Grade = (1..6).to_a
end