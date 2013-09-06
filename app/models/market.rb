require 'roo'
class Market < ActiveRecord::Base
  attr_accessible :title

  attr_accessible :attachment
  has_attached_file :attachment

  has_many :markets_students
  has_many :students,:through=>:markets_students

  # has_and_belongs_to_many :people,:uniq=>true

  validates :title, :presence => true  
  validates_attachment_content_type :attachment,:content_type=>["application/vnd.ms-excel",     
             "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",]

  def import
    begin
      s = Roo::Excelx.new(attachment.path)
      self.students = []
      s.to_a.each do |data|
        student  = Student.student.find_or_create_by_phone(data[0])
        student.username = data[1]
        student.school = School.find_or_create_by_title(data[2])
        student.college = College.find_or_create_by_title(data[3])
        student.major = Major.find_or_create_by_title(data[4])
        student.grade = data[5]
        student.signup_openclass = data[6]
        student.save
        student.markets << self
        ms = MarketsStudent.where(:market_id=>self.id,:student_id=>student.id).first
        ms.state = data[7]
        ms.save
      end
    rescue
    end  
  end
end
