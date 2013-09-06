class Person < ActiveRecord::Base
  attr_accessible :alumnus, :exam_4, :exam_6, :exam_qimo, :exam_toefl, :finished, :guide, :guide_vip, :home_101, :home_51, :home_summer, :logic, :phone, :qq, :state, :username, :phone, :grade, :signup_openclass


  belongs_to :school
  belongs_to :college
  belongs_to :major  
  has_many :warnings
  has_many :scores
  has_many :baomings
  has_many :baomingitems,:through=>:baomings
  has_many :markets_people
  has_many :markets,:through=>:markets_people
  has_and_belongs_to_many :klasses,:uniq => true
  has_and_belongs_to_many :klasseplans,:uniq => true  

  validates :phone,:presence=>true
  validates :phone,:uniqueness=>true

  state_machine :state,:initial=>:student do 
    state :student do      
      # TODO : 提前20天可以知道该时间段哪些课程有足够的学生可以开课
      def available
        true
      end
    end

    state :teacher do
      def available
        false
      end
    end
  end  

  state_machine.states.map do |state|
    scope state.name, :conditions => { :state => state.name.to_s }
  end
end
