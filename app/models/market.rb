require 'roo'
class Market < ActiveRecord::Base
  attr_accessible :title

  attr_accessible :attachment
  has_attached_file :attachment

  has_many :markets_people
  has_many :people,:through=>:markets_people
  # has_and_belongs_to_many :people,:uniq=>true

  validates :title, :presence => true  
  validates_attachment_content_type :attachment,:content_type=>["application/vnd.ms-excel",     
             "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",]

  def import
    s = Roo::Excelx.new(attachment.path)
    self.people = []
    s.to_a.each do |data|
      person  = Person.student.find_or_create_by_phone(data[0])
      person.username = data[1]
      person.school = School.find_or_create_by_title(data[2])
      person.college = College.find_or_create_by_title(data[3])
      person.major = Major.find_or_create_by_title(data[4])
      person.grade = data[5]
      person.signup_openclass = data[6]
      person.save
      person.markets << self
      mp = MarketsPerson.where(:market_id=>self.id,:person_id=>person.id).first
      ppp mp
      # (person.markets_people & self.markets_people).each do |mp|
        mp.state = data[7]
        mp.save
      # end
    end
  end
end
