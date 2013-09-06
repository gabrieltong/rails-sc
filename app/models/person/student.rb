class Student < Person
  has_many :markets_students
  has_many :markets,:through=>:markets_students    

  Grade = (1..6).to_a
end