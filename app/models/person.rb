class Person < ActiveRecord::Base
  attr_accessible :alumnus, :exam_4, :exam_6, :exam_qimo, :exam_toefl, :finished, :guide, :guide_vip, :home_101, :home_51, :home_summer, :logic, :phone, :qq, :state, :username
  belongs_to :school
  belongs_to :major  
  has_many :warnings
  has_many :scores
  has_and_belongs_to_many :klasses,:uniq => true  
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
end
