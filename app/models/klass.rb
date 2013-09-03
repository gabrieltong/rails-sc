class Klass < ActiveRecord::Base
  attr_accessible :capacity, :chaban, :cycle, :duration, :frequency, :kind, :mic, :network, :projector, :remark, :score, :section, :sound, :state, :style, :title, :tools, :video_makeup
  has_and_belongs_to_many :people,:uniq => true  
  state_machine :state,:initial=>'klass' do 
    state 'klass' do      
      validates :capacity,:numericality => { :less_than_or_equal_to => 100,:greater_than=>0 }
    end

    state 'service' do
      validates :capacity,:numericality => { :less_than_or_equal_to => 5,:greater_than=>0 }
    end
  end  
end
